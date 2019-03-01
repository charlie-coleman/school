%{
/* hw3b.l - convert common texting shorthand to real words
*/

static int begin_sentence = 1;
%}

WC                  [A-Za-z']
NW                  [^A-Za-z']

%start		        INW NIW

%%

\\[^ \n]+           ECHO;

{NW}                { BEGIN NIW; ECHO; begin_sentence = 0; }
[.!?]$		        { BEGIN NIW; ECHO; begin_sentence = 1; }

<NIW>"lol"/{NW}     { BEGIN INW; printf("laugh out loud"); }
<NIW>"rofl"/{NW}    { BEGIN INW; printf("rolling on the floor laughing"); }
<NIW>"brb"/{NW}     { BEGIN INW; printf("be right back"); }
<NIW>"lmk"/{NW}     { BEGIN INW; printf("let me know"); }
<NIW>"smh"/{NW}     { BEGIN INW; printf("shaking my head"); }
<NIW>"nvm"/{NW}     { BEGIN INW; printf("nevermind"); }
<NIW>"ofc"/{NW}     { BEGIN INW; printf("of course"); }
<NIW>"idk"/{NW}     { BEGIN INW; printf("I don't know"); }
<NIW>"imo"/{NW}     { BEGIN INW; printf("in my opinion"); }
<NIW>"imho"/{NW}    { BEGIN INW; printf("in my honest opinion"); }
<NIW>"tbh"/{NW}     { BEGIN INW; printf("to be honest"); }
<NIW>"ty"/{NW}      { BEGIN INW; printf("thank you"); }
<NIW>"tyvm"/{NW}    { BEGIN INW; printf("thank you very much"); }
<NIW>"ttyl"/{NW}    { BEGIN INW; printf("talk to you later"); }
<NIW>"tbqh"/{NW}    { BEGIN INW; printf("to be quite honest"); }
<NIW>"thx"/{NW}     { BEGIN INW; printf("thanks"); }
<NIW>"sry"/{NW}     { BEGIN INW; printf("sorry"); }
<NIW>"pls"/{NW}     { BEGIN INW; printf("please"); }
<NIW>"tbf"/{NW}     { BEGIN INW; printf("to be fair"); }
<NIW>"btw"/{NW}     { BEGIN INW; printf("by the way"); }

.                   { BEGIN INW; ECHO; }
