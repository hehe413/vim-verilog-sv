#!/bin/bash

rm -rf ~/.vim 
rm -rf ~/.vimrc 

mv ~/.vimrc_bak ~/.vimrc
mv ~/.vim_bak ~/.vim 

echo "Please del cfg about vim-verilog in ~/.bashrc and ~/.cshrc"

echo "After del cfg, then reopen ternimal, Uninstall will be Done!"

