#!/bin/bash
T="$1";
L=${#T};
W=$(((($2-18)/2)+4));
H=$(((($3-12)/2)+1));
r(){ for i in $(eval echo {1..$1}); do printf %s "$2"; done };
r $W " ";printf "   .__.";r $W " ";printf "  .=";r $L "=";printf "=.\n";
r $W " ";printf " .(\\\\\//).  .";r $(( $W -3 )) "-";printf "[ %s ]\n" "$T";
r $W " ";printf ".(\\\\\()//)./";r $(( $W -2 )) " ";printf "'=";r $L "=";printf "='\n";
printf "╭";r $W "─";printf "(\)\/(/)";r $W "─";printf "╮\n";
printf "│ ";r $W " ";printf "╱╱╱╲╲╲";r $W " ";printf " │\n";
printf "│";r $W " ";printf "╱╱╱║║╲╲╲";r $W " ";printf "│\n";
printf "│";r $(($W-1)) " ";printf "╱╱\`║║║║\`╲╲";r $(($W-1)) " ";printf "│\n";
for i in $(eval echo {1..$H}); do printf "│";r $W " ";printf "  ║║║║  ";r $W " ";printf "│\n";done;
for i in 1 2; do printf "╞";r $W "═";printf "══╬╬╬╬══";r $W "═";printf "╡\n";done;
for i in $(eval echo {1..$H}); do printf "│";r $W " ";printf "  ║║║║  ";r $W " ";printf "│\n";done;
printf "╰";r $W "─";printf "──╨╨╨╨──";r $W "─";printf "╯\n"