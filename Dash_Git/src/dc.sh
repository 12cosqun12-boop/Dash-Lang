#!/bin/bash
input=$1
output="bin/out.ssa"

echo "export function w \$main() {" > $output
echo "@start" >> $output

while read -r line || [[ -n "$line" ]]; do
    [[ -z "$line" || $line == //* ]] && continue
    
    # Variable handling (p =l -> %p =l)
    line=$(echo "$line" | sed 's/^\([a-zA-Z0-9_]*\) *=/    %\1 =/')
    
    # moo -> malloc, mee -> free, dun -> ret
    line=$(echo "$line" | sed 's/moo(\(.*\))/call \$malloc(l \1)/g')
    line=$(echo "$line" | sed 's/mee(\([a-zA-Z0-9_]*\))/call \$free(l %\1)/g')
    line=$(echo "$line" | sed 's/dun /ret /g')

    echo "    $line" >> $output
done < "$input"
echo "}" >> $output
