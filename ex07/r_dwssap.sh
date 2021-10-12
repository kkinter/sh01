#! bin/bash

cat /etc/passwd | grep -v "#" | awk 'NR>=2'| awk -F ":" '{ print $1}' | rev | sort -r | awk "NR>=$FT_LINE1 && NR<=$FT_LINE2" | tr "\n" " "  | sed 's/ /, /g' | sed 's/, $/./g' | tr -d "\n" 
