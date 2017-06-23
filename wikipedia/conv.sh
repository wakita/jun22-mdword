#！/usr/bin/env bash


if (type pandoc > /dev/null 2>&1); then pandoc=pandoc
elif (type pandoc.exe > /dev/null 2>&1); then pandoc=pandoc.exe
fi

title=Square_root

#rm -rf *wiki?edia*
#wget -E -H -k -K -p https://en.wikipedia.org/wiki/$title

cd en.wikipedia.org/wiki
$pandoc -t markdown Square_root.html | sed -f ../../wp.sed > Square_root.md
# $pandoc -t docx -o ../../Square_root.docx --reference-docx=../../wp-templ.docx Square_root.md
$pandoc -t docx -o ../../Square_root2.docx --reference-docx=../../wp-templ.docx Square_root2.md
