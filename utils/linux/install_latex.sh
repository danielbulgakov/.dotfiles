#!/bin/bash

# Install base texlive packages
sudo apt install texlive-base texlive-xetex texlive-lang-cyrillic
sudo apt install texlive-latex-recommended

# Install Times New Roman font
sudo apt install ttf-mscorefonts-installer

# Install xelatex and latexmk
sudo apt install latexmk

# Include Paths using .bashrc file
echo "# Latex config" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/share/texlive" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/bin/xelatex" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/bin/latexmk" >> ~/.bashrc

