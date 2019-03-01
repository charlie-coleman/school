%{
/* chef.x - convert English on stdin to Mock Swedish on stdout
 *
 * The WC definition matches any word character, and the NW definition matches
 * any non-word character.  Two start conditions are maintained: INW (in word)
 * and NIW (not in word).  The first rule passes TeX commands without change.
 *
 * HISTORY
 *
 * Apr 26, 1993; John Hagerman: Added ! and ? to the Bork Bork Bork rule.
 *
 * Apr 15, 1992; John Hagerman: Created.
 */

static int i_seen = 0;
%}

WC		[A-Za-z']
NW		[^A-Za-z']

%start		INW NIW

%%

\\[^ \n]+	ECHO;

{NW}		{ BEGIN NIW; i_seen = 0; ECHO; }
[.!?]$		{ BEGIN NIW; i_seen = 0;
		  printf("%c\nBork Bork Bork!",yytext[0]); }

<NIW>"bork"/{NW} ECHO;
<NIW>"Bork"/{NW} ECHO;

"an"		{ BEGIN INW; printf("un"); }	// replace the word "an" with "un" anywhere
"An"		{ BEGIN INW; printf("Un"); }	// same as above, just capitalized
"au"		{ BEGIN INW; printf("oo"); }	// replace "au" anywhere with "oo"
"Au"		{ BEGIN INW; printf("Oo"); }
"a"/{WC}	{ BEGIN INW; printf("e"); }	// if "a" or "A" is followed by any character,
"A"/{WC}	{ BEGIN INW; printf("E"); }	// replace with "E"
"en"/{NW}	{ BEGIN INW; printf("ee"); }	// replace "en" at the end of a word with "ee"
<INW>"ew"	{ BEGIN INW; printf("oo"); }	// replace "ew" with "oo" inside of words
<INW>"e"/{NW}	{ BEGIN INW; printf("e-a"); }	// if "e" is the last char in the word, replace with "e-a"
<NIW>"e"	{ BEGIN INW; printf("i"); }	// replace "e" at the start of words with "i"
<NIW>"E"	{ BEGIN INW; printf("I"); }
<INW>"f"	{ BEGIN INW; printf("ff"); }	// replace "f" with "ff" inside words
<INW>"ir"	{ BEGIN INW; printf("ur"); }	// replace "ir" with "ur" inside words
<INW>"i"	{ BEGIN INW; printf(i_seen++ ? "i" : "ee"); }	// replace the first i in a word with ee
<INW>"ow"	{ BEGIN INW; printf("oo"); }	// replace ow with oo in a word
<NIW>"o"	{ BEGIN INW; printf("oo"); }	// replace o at the start of the word with oo
<NIW>"O"	{ BEGIN INW; printf("Oo"); }
<INW>"o"	{ BEGIN INW; printf("u"); }	// replace "o" in the middle of words with "u"
"the"		{ BEGIN INW; printf("zee"); }	// replace the with zee
"The"		{ BEGIN INW; printf("Zee"); }
"th"/{NW}	{ BEGIN INW; printf("t"); }	// replace "th" with "t" at the end of words
<INW>"tion"	{ BEGIN INW; printf("shun"); }	// replace "tion" with "shun" in words
<INW>"u"	{ BEGIN INW; printf("oo"); }	// replace "u" with "oo" in words
<INW>"U"	{ BEGIN INW; printf("Oo"); }
"v"		{ BEGIN INW; printf("f"); }	// replace all v's with f's
"V"		{ BEGIN INW; printf("F"); }
"w"		{ BEGIN INW; printf("v"); }	// replace all w's with v's
"W"		{ BEGIN INW; printf("V"); }

.		{ BEGIN INW; ECHO; } // any character triggers in word
