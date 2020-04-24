#!/bin/bash

wget http://mirrors.ctan.org/fonts/fontawesome.zip
unzip fontawesome.zip
mv fontawesome/opentype/FontAwesome.otf /usr/share/texlive/texmf-dist/fonts/opentype/public/fontawesome/FontAwesome.otf
mv fontawesome/tex/fontawesome.sty /usr/share/texlive/texmf-dist/tex/latex/fontawesome/fontawesome.sty
mv fontawesome/tex/*.tex /usr/share/texlive/texmf-dist/tex/latex/fontawesome/
texhash

rm -r fontawesome.zip fontawesome
