1{s/.*/\
|          |\
|     0    |\
|     000  |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|          |\
|==========|/
h
}

/^BT/{	
g;s/.\{130\}/SPO ONE LOVE!/;h;q
}

#rotate
/^w/{
g
#rotate line
s/ 0  \(.*\) 0  \(.*\) 0  \(.*\) 0  /0000\1    \2    \3    /;h;tnot
s/0000\([^0]\{10\}\)   \([^0]\{10\}\)   \([^0]\{10\}\)   / 0  \10  \20  \30  /;h;tnot

#rotate zig-zag 1
s/00\([^0]\{11\}\) 00\([^0]\{10\}\) / 0\100 \20/;h;tnot
s/ 0\([^0]\{11\}\)00 \([^0]\{10\}\)0/00\1 00\2 /;h;tnot

#rotate zig-zag 2
s/ 00\([^0]\{10\}\)00\([^0]\{11\}\)  /0  \100\2 0/;h;tnot
s/0  \([^0]\{10\}\)00 \([^0]\{11\}\)0 / 00\100 \2  /;h;tnot

#rotate T-figure
s/0\([^0]\{11\}\)000\([^0]\{10\}\)  /0\100 \2 0/;h;tnot
s/0  \([^0]\{10\}\)00 \([^0]\{10\}\)0/ 0 \1000\2 /;h;tnot
s/000\([^0]\{10\}\) 0\([^0]\{11\}\)  /0  \100\20 /;h;tnot
s/ 0 \([^0]\{10\}\)00 \([^0]\{10\}\) 0 /000\1 0 \2   /;h;tnot

#rotate corner 1
s/0  \([^0]\{10\}\)0  \([^0]\{10\}\)00 /  0\1000\2   /;h;tnot
s/000\([^0]\{10\}\)0 \([^0]\{11\}\)  /0  \10 \200/;h;tnot
s/00 \([^0]\{10\}\) 0 \([^0]\{11\}\)0 /000\10  \2  /;h;tnot
s/  0\([^0]\{10\}\)000\([^0]\{10\}\)  /00 \1 0 \2 0/;h;tnot

#rotate corner 2
s/ 0 \([^0]\{10\}\) 0 \([^0]\{10\}\)00/000\1  0\2  /;h;tnot
s/0  \([^0]\{10\}\)000\([^0]\{10\}\)  / 0 \1 0 \200/;h;tnot
s/00 \([^0]\{10\}\)0  \([^0]\{10\}\)0 /0  \1000\2  /;h;tnot
s/000\([^0]\{10\}\)  0\([^0]\{10\}\) /00 \10  \20/;h;tnot

#cube
s/00\([^0]\{11\}\)00/&/;tnot
}

#left
/^a/{
g
s/|0/&/;tnot
s/X0/&/;tnot
s/ \(00*\)/\1 /g
h
bnot
}

#right
/^d/{
:right
g
s/0|/&/;tnot
s/0X/&/;tnot
s/\(00*\) / \1/g
h
bnot
}

#jump down
/^z/{
g
s/=|/=|hyper jump/
h
bdown
}

/^/{
bdown
}

/^s/{
:down
g
#Line down
s/0000\([^0]\{9\}\)    /    \10000/;h;tnext
s/0\([^0]\{12\}\)0\([^0]\{12\}\)0\([^0]\{12\}\)0\([^0]\{12\}\) / \10\20\30\40/;h;tnext

#T-figure down
s/0\([^0]\{11\}\)000\([^0]\{10\}\)   / \1 0 \2000/;h;tnext
s/0\([^0]\{12\}\)00\([^0]\{11\}\)0 \([^0]\{11\}\) / \10 \200\30/;h;tnext
s/000\([^0]\{10\}\) 0 \([^0]\{11\}\) /   \1000\20/;h;tnext
s/0\([^0]\{11\}\)00\([^0]\{11\}\) 0\([^0]\{12\}\) / \1 0\200\30/;h;tnext


#Zig-zag 1 down
s/00\([^0]\{11\}\) 00\([^0]\{11\}\)  /  \100 \200/;h;tnext
s/0\([^0]\{11\}\)00\([^0]\{11\}\)0 \([^0]\{11\}\) / \1 0\200\30/;h;tnext

#Zig-zag 2 down
s/00\([^0]\{10\}\)00 \([^0]\{10\}\)  /  \1 00\200/;h;tnext
s/0\([^0]\{12\}\)00\([^0]\{11\}\) 0\([^0]\{12\}\) / \10 \200\30/;h;tnext

#Corner 1 down
s/0\([^0]\{12\}\)0\([^0]\{12\}\)00\([^0]\{11\}\)  / \10\20 \300/;h;tnext
s/000\([^0]\{10\}\)0  \([^0]\{10\}\) /   \1000\20/;h;tnext
s/00\([^0]\{11\}\) 0\([^0]\{12\}\)0\([^0]\{12\}\) /  \100\20\30/;h;tnext
s/0\([^0]\{10\}\)000\([^0]\{10\}\)   / \1  0\2000/;h;tnext

#Corner 2 down
s/0\([^0]\{12\}\)000\([^0]\{10\}\)   / \10  \2000/;h;tnext
s/000\([^0]\{10\}\)  0\([^0]\{12\}\) /   \1000\20/;h;tnext
s/0\([^0]\{12\}\)0\([^0]\{11\}\)00\([^0]\{11\}\)  / \10\2 0\300/;h;tnext
s/00\([^0]\{11\}\)0 \([^0]\{11\}\)0\([^0]\{12\}\) /  \100\20\30/;h;tnext

#Cube down
s/00\([^0]\{11\}\)00\([^0]\{11\}\)  /  \100\200/;h;tnext
:gameover
s/|..........|/ GAME OVER! /;h;q
	
:next
g
s/0.\{12\}[X=]/&/;tzal
s/hyper jump/&/;tdown
bnot
:zal
s/hyper jump//
s/0/X/g;tbag1
:bag1
s/.|X\{10\}|//;h;tbag2
h
bfigure
:bag2
s/\(|[^|]\{10\}|\)/|          |\
\1/;h;tbag1
h
bfigure

:figure
g
s/|          |//g
s/ /12/g
s/X/543/g
s/=/123451234561423675/g
s/|/12345/g
s/[^12345]/67676767/g;tbag3
:bag3
s/^.\{224\}1/&/;tfigure1
s/^.\{224\}2/&/;tfigure2
s/^.\{224\}3/&/;tfigure3
s/^.\{224\}4/&/;tfigure4
s/^.\{224\}5/&/;tfigure5
s/^.\{224\}6/&/;tfigure6
s/^.\{224\}7/&/;tfigure7
}

2{
:figure1
g;s/\(.\{7\}\)[^x]\(.\{10\}\)[^x]\{3\}/\10\2000/;h;tnot

:figure2
g;s/\(.\{6\}\)[^x]\(.\{11\}\)[^x]\{3\}/\10\2000/;h;tnot

:figure3
g;s/\(.\{6\}\)[^x]\{2\}\(.\{11\}\)[^x]\{2\}/\100\200/;h;tnot

:figure4
g;s/\(.\{5\}\)[^x]\{2\}\(.\{12\}\)[^x]\{2\}/\100\200/;h;tnot

:figure5
g;s/\(.\{5\}\)[^x]\{4\}/\10000/;h;tnot

:figure6
g;s/\(.\{6\}\)[^x]\(.\{12\}\)[^x]\{3\}/\10\2000/;h;tnot

:figure7
g;s/\(.\{5\}\)[^x]\{2\}\(.\{10\}\)[^x]\{2\}/\100\200/;h;tnot
}
:not