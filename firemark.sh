a=$[${#1}+2]
b=$[$2/2]
c=$[$3/2-5]
d=╱╱╱
e=╲╲╲
f=║║║║
P()(printf "$1")
R()(perl -e "print '${2:- }'x$[$b-$1]")
H()(R $1;P "$2";R $3 $4)
S()(P "$1%${a}s$1\n"|tr ' ' =)
A='P $[${#1}/2+1]'
X()(x=`R $(eval $A) $2`;P "$3$x$1$x$4\n")
Z()(z=`R $(eval $A)`;P "│$z$1$z│\n")
W()(for w in `seq $1`;{ eval ${@:2};})
Q()(W $c Z $f)
H 2 .__. 3;S .
H 4 '.(\\\//).  .' 8 -;P "[ $1 ]\n"
H 5 '.(\\\()//)./' 7;S \'
X '(\)\\/(/)' ─ ╭ ╮
Z $d$e
Z $d║║$e
Z ╱╱\`$f\`╲╲ 
Q
W 2 X ╬╬╬╬ ═ ╞ ╡ 
Q
X ╨╨╨╨ ─ ╰ ╯
