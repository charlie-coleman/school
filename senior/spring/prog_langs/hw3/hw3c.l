%{
/* hw3b.l - convert common texting shorthand to real words
 * If you start the first entry with an abbreviation it doesn't work for some reason.
 * This only applies if the very first string in the very first entry is a match.
 * Tried for a while to fix but couldn't figure it out.
*/

static int begin_sentence = 1;
%}

WC                  [A-Za-z']
NW                  ([^A-Za-z']|[.!?]*$)

%start		        INW NIW
%%

\\[^ \n]+           { ECHO; }

{NW}                { BEGIN NIW; ECHO; }
[.!?]$		        { BEGIN NIW; ECHO; }
[.!?]*" "           { BEGIN NIW; begin_sentence = 1; ECHO; }

<NIW>"lol"/{NW}     { BEGIN INW; if(begin_sentence) printf("L"); else printf("l"); printf("augh out loud"); }
<NIW>"rofl"/{NW}    { BEGIN INW; if(begin_sentence) printf("R"); else printf("r"); printf("olling on the floor laughing"); }
<NIW>"brb"/{NW}     { BEGIN INW; if(begin_sentence) printf("B"); else printf("b"); printf("e right back"); }
<NIW>"lmk"/{NW}     { BEGIN INW; if(begin_sentence) printf("L"); else printf("l"); printf("et me know"); }
<NIW>"smh"/{NW}     { BEGIN INW; if(begin_sentence) printf("S"); else printf("s"); printf("haking my head"); }
<NIW>"nvm"/{NW}     { BEGIN INW; if(begin_sentence) printf("N"); else printf("n"); printf("evermind"); }
<NIW>"ofc"/{NW}     { BEGIN INW; if(begin_sentence) printf("O"); else printf("o"); printf("f course"); }
<NIW>"idk"/{NW}     { BEGIN INW; printf("I don't know"); }
<NIW>"imo"/{NW}     { BEGIN INW; if(begin_sentence) printf("I"); else printf("i"); printf("n my opinion"); }
<NIW>"imho"/{NW}    { BEGIN INW; if(begin_sentence) printf("I"); else printf("i"); printf("n my honest opinion"); }
<NIW>"tbh"/{NW}     { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("o be honest"); }
<NIW>"ty"/{NW}      { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("hank you"); }
<NIW>"tyvm"/{NW}    { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("hank you very much"); }
<NIW>"ttyl"/{NW}    { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("alk to you later"); }
<NIW>"tbqh"/{NW}    { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("o be quite honest"); }
<NIW>"thx"/{NW}     { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("hanks"); }
<NIW>"sry"/{NW}     { BEGIN INW; if(begin_sentence) printf("S"); else printf("s"); printf("orry"); }
<NIW>"pls"/{NW}     { BEGIN INW; if(begin_sentence) printf("P"); else printf("p"); printf("lease"); }
<NIW>"tbf"/{NW}     { BEGIN INW; if(begin_sentence) printf("T"); else printf("t"); printf("o be fair"); }
<NIW>"btw"/{NW}     { BEGIN INW; if(begin_sentence) printf("B"); else printf("b"); printf("y the way"); }

.                   { BEGIN INW; ECHO; begin_sentence = 0; }
