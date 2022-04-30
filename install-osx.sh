#!/bin/bash

# 拷贝文件
function copy_files()
{
    mv ~/.vimrc ~/.vimrc_bak
    cp ./linux.vimrc ~/.vimrc

    mv ~/.vim ~/.vim_bak
    mkdir ~/.vim
    cp -rf ./autoload ~/.vim/
    cp -rf ./colors   ~/.vim/ 
    cp -rf ./help.md   ~/.vim/ 
    cp -rf ./plugged  ~/.vim/

    mkdir -p ~/.vim/TempFiles
    mkdir -p ~/.vim/TempFiles/backupdir
    mkdir -p ~/.vim/TempFiles/swapdir
    mkdir -p ~/.vim/TempFiles/undodir

    # tools
    mkdir -p ~/.vim/bin 

    # tags
    mkdir -p ~/tags

    cp -rf ~/.csh_profile ~/.csh_profile_bak
    cp -rf ~/.bash_profile ~/.bash_profile_bak

    # for csh
    echo -e "\n" >> ~/.csh_profile
    echo "# for vim-verilog" >> ~/.csh_profile
    echo "set path = (~/.vim/bin \$path)" >> ~/.csh_profile 
    echo "alias sv-format 'verible-verilog-format --inplace --line_break_penalty 4 --indentation_spaces 4 --column_limit 100 --port_declarations_alignment align --'" >> ~/.csh_profile 
    echo "alias sv-lint 'verible-verilog-lint --'" >> ~/.csh_profile 
    echo "alias ctags_sv 'ctags -f ~/tags/sv_tags --languages=SystemVerilog -R \!* '" >> ~/.csh_profile 
    echo "alias ctags_v  'ctags -f ~/tags/v_tags --languages=Verilog -R \!* '" >> ~/.csh_profile 
    echo -e "\n" >> ~/.csh_profile

    # bash
    echo -e "\n" >> ~/.bash_profile
    echo "# for vim-verilog" >> ~/.bash_profile
    echo "export PATH=~/.vim/bin:\$PATH" >> ~/.bash_profile 
    echo "alias sv-format=\"verible-verilog-format --inplace --line_break_penalty 4 --indentation_spaces 4 --column_limit 100 --port_declarations_alignment align --\"" >> ~/.bash_profile 
    echo "alias sv-lint=\"verible-verilog-lint --\"" >> ~/.bash_profile 
    echo "alias ctags_sv=\"ctags -f ~/tags/sv_tags --languages=SystemVerilog -R \"" >> ~/.bash_profile 
    echo "alias ctags_v=\"ctags  -f ~/tags/v_tags --languages=Verilog -R \"" >> ~/.bash_profile 
    echo -e "\n" >> ~/.bash_profile
}

# 安装linux平台字体
function install_fonts_on_linux()
{
    mkdir -p ~/.fonts
    cp -rf ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono.otf ~/.fonts
    
    if which fc-cache > /dev/null ; then
        fc-cache -vf ~/.fonts
    else
        color="$(tput setaf 7)"
        normal="$(tput sgr0)"
        printf "${color}"
        echo "Not have fc-cache installed, You must install fonts manual" 
        printf "${normal}"
    fi
}

# 改变一些文件、文件夹
function chown_dir()
{
    chmod +x ~/.vim/bin/*
    chmod 755 ~/.vim 
    chmod 755 ~/.fonts
}

# 打印logo
function print_logo()
{
    color="$(tput setaf 6)"
    normal="$(tput sgr0)"
    printf "${color}"
    echo 'installed!'
    echo ''
    echo 'Just enjoy it after reopen terminal!'
    echo ''
    printf "${normal}"
}

function begin_install_vimplus()
{
    copy_files
    install_fonts_on_linux
    chown_dir
    print_logo
}

# 在linux平台安装vimplus
function install_vimplus_on_linux()
{
    begin_install_vimplus
}

# main函数
function main()
{
    install_vimplus_on_linux
}

# 调用main函数
main

