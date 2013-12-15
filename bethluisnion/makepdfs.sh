#!/bin/bash

mkdir pics

for glyph in a b c d e f g h i l m n o p q r s t u y z A B C D E F G H I L M N O P Q R S T U Y Z "®" ">" 1 2 3 4 5 6 7 8 9 ; do
    echo "\documentclass{standalone}\usepackage{bethluisnion}\begin{document}\BethLuisNion" > tmp.tex
    echo -n $glyph >> tmp.tex
    echo "\end{document}" >> tmp.tex
    xelatex tmp.tex
    mv tmp.pdf pics/$glyph.pdf
done
