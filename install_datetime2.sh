#/bin/bash

wget http://mirrors.ctan.org/macros/latex/contrib/datetime2.zip
unzip datetime2.zip
cd datetime2
latex datetime2.ins
mkdir /usr/share/texlive/texmf-dist/tex/latex/datetime2
mv *.sty /usr/share/texlive/texmf-dist/tex/latex/datetime2
texhash
cd ..
rm -r datetime2 datetime2.zip
