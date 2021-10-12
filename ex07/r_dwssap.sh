#! bin/bash

cat /etc/passwd | grep -v "#" | awk 'NR % 2 == 0'| awk -F ":" '{ print $1}' | rev | sort -r | awk -v ft_line1="$FT_LINE1" -v ft_line2="$FT_LINE2" "NR>=$FT_LINE1 && NR<=$FT_LINE2" | tr "\n" " "  | sed 's/ /, /g' | sed 's/, $/./g' | tr -d "\n" 
