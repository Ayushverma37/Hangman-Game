# Hangman-Game
Designed Graphical version of Hangman game in Perl.



INSTRUCTIONS:
In the terminal window type the following command to compile and run the code:
perl Hangman.pl


ASSUMPTIONS:
1)The player can enter characters in upper case also. It will be automatically converted to lower case by code.
2)Only one character should be entered at a time.

NOTE: 
1)The game implemented is the Graphics version of the hangman game.
2)Code is divided into meaningful subroutines.

HOW TO PLAY THE GAME:
Choose any letter and type. If the letter is in the random word, it gets replace else one chance is deducted.
After every losing chance, one body part gets added to the Hangman graphics.
The game will continue until all body part is covered.

***************************************************************************************

EXAMPLE OF WINING THE GAME
$ perl Hangman.pl
Welcome to Hangman
   ------ 
   |     |
         |
         |
         |
         |
         |
_ _ _ _ _ _ _ _

Make a Guess : e

Guessed Letters : e
   ------ 
   |     |
         |
         |
         |
         |
         |
_ e _ _ e _ _ _

Make a Guess : a
Bad guess

Guessed Letters : ea
   ------ 
   |     |
   o     |
         |
         |
         |
         |
_ e _ _ e _ _ _

Make a Guess : i
Bad guess

Guessed Letters : eai
   ------ 
   |     |
   o     |
   |     |
         |
         |
         |
_ e _ _ e _ _ _

Make a Guess : o

Guessed Letters : eaio
   ------ 
   |     |
   o     |
   |     |
         |
         |
         |
_ e o _ e _ _ _

Make a Guess : c
Bad guess

Guessed Letters : eaioc
   ------ 
   |     |
   o     |
  \|     |
         |
         |
         |
_ e o _ e _ _ _

Make a Guess : s
Bad guess

Guessed Letters : eaiocs
   ------ 
   |     |
   o     |
  \|/    |
         |
         |
         |
_ e o _ e _ _ _

Make a Guess : g

Guessed Letters : eaiocsg
   ------ 
   |     |
   o     |
  \|/    |
         |
         |
         |
g e o _ e _ _ _

Make a Guess : t

Guessed Letters : eaiocsgt
   ------ 
   |     |
   o     |
  \|/    |
         |
         |
         |
g e o _ e t _ _

Make a Guess : y

Guessed Letters : eaiocsgty
   ------ 
   |     |
   o     |
  \|/    |
         |
         |
         |
g e o _ e t _ y

Make a Guess : r

Guessed Letters : eaiocsgtyr
   ------ 
   |     |
   o     |
  \|/    |
         |
         |
         |
g e o _ e t r y

Make a Guess : m

Guessed Letters : eaiocsgtyrm
g e o m e t r y
Congrats! You won



EXAMPLE OF LOSING GAME
$ perl Hangman.pl
Welcome to Hangman
   ------ 
   |     |
         |
         |
         |
         |
         |
_ _ _ _ _ _ _ _

Make a Guess : q
Bad guess

Guessed Letters : q
   ------ 
   |     |
   o     |
         |
         |
         |
         |
_ _ _ _ _ _ _ _

Make a Guess : w

Guessed Letters : qw
   ------ 
   |     |
   o     |
         |
         |
         |
         |
_ _ _ _ w _ _ _

Make a Guess : e

Guessed Letters : qwe
   ------ 
   |     |
   o     |
         |
         |
         |
         |
_ _ _ _ w _ _ e

Make a Guess : z
Bad guess

Guessed Letters : qwez
   ------ 
   |     |
   o     |
   |     |
         |
         |
         |
_ _ _ _ w _ _ e

Make a Guess : x
Bad guess

Guessed Letters : qwezx
   ------ 
   |     |
   o     |
  \|     |
         |
         |
         |
_ _ _ _ w _ _ e

Make a Guess : y
Bad guess

Guessed Letters : qwezxy
   ------ 
   |     |
   o     |
  \|/    |
         |
         |
         |
_ _ _ _ w _ _ e

Make a Guess : sd
Bad guess

Guessed Letters : qwezxysd
   ------ 
   |     |
   o     |
  \|/    |
   |      |
         |
         |
_ _ _ _ w _ _ e

Make a Guess : f

Guessed Letters : qwezxysdf
   ------ 
   |     |
   o     |
  \|/    |
   |      |
         |
         |
_ _ f _ w _ _ e

Make a Guess : sf
Bad guess

Guessed Letters : qwezxysdfsf
   ------ 
   |     |
   o     |
  \|/    |
   |     |
  /      |
         |
_ _ f _ w _ _ e

Make a Guess : g
Bad guess

Guessed Letters : qwezxysdfsfg
   ------ 
   |     |
   o     |
  \|/    |
   |     |
  / \    |
         |
So Sorry! You lost
The correct word was software

