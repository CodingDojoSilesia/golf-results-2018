p = process.argv;
r = (s,t) => s.repeat(t);
b = (x=0) => r(' ',w-x);
l = console.log;
t = p[2];
w = p[3]/2-3;
h = p[4]/2-6;
s = `│${b()}║║║║${b()}│`;
l(` ${b()}.__.${b()}.=${r('=',t.length)}=.
 ${b(2)}.(\\\\//).  .-${r('-',w-6)}[ ${t} ]
 ${b(3)}.(\\\\()//)./${b(4)}\'=${r('=',t.length)}=\'
╭${r('─',w-2)}(\\)\\/(/)${r('─',w-2)}╮
│${b(1)}╱╱╱╲╲╲${b(1)}│
│${b(2)}╱╱╱║║╲╲╲${b(2)}│
│${b(3)}╱╱\`║║║║\`╲╲${b(3)}│`);
for(i=-1;i<h;i++){l(s);}
for(i of [1,2]){l('╞'+r('═',w)+'╬╬╬╬'+r('═',w)+'╡')}
for(i=-1;i<h;i++){l(s);}
l('╰'+r('─',w)+'╨╨╨╨'+r('─',w)+'╯');