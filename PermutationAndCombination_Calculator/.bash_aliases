alias p1='bison -d -v -o pc.tab.c pc.y'
alias p2='gcc -c -g -I.. pc.tab.c'
alias p3='flex -o pc.yy.c pc.l'
alias p4='gcc -c -g -I.. pc.yy.c'
alias p5='gcc -o pc pc.tab.o pc.yy.o -ll'
alias p6='./pc < input.in'
