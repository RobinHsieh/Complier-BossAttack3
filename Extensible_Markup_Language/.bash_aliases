alias x1='bison -d -v -o xml.tab.c xml.y'
alias x2='gcc -c -g -I.. xml.tab.c'
alias x3='flex -o xml.yy.c xml.l'
alias x4='gcc -c -g -I.. xml.yy.c'
alias x5='gcc -o xml xml.tab.o xml.yy.o -ll'
alias x6='./xml < input.in'
