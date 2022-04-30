#!/bin/bash

# 获取平台类型，mac还是linux平台
function get_platform_type()
{
    echo $(uname -s)
}

# 获取linux平台类型，ubuntu还是centos
function get_linux_platform_type()
{
    if which apt-get > /dev/null ; then
        echo "ubuntu" # debian ubuntu系列
    elif which yum > /dev/null ; then
        echo "centos" # centos redhat系列
    else
        echo "unsupport system"
    fi
}

# 拷贝文件
function copy_files()
{
    mv ~/.vimrc ~/.vimrc_bak
    cp ./linux.vimrc ~/.vimrc

    mv ~/.vim ~/.vim_bak
    mkdir ~/.vim
    cp -rf ./autoload/ ~/.vim/
    cp -rf ./colors/   ~/.vim/ 
    cp -rf ./help.md   ~/.vim/ 
    cp -rf ./plugged/  ~/.vim/

    mkdir -p ~/.vim/TempFiles
    mkdir -p ~/.vim/TempFiles/backupdir
    mkdir -p ~/.vim/TempFiles/swapdir
    mkdir -p ~/.vim/TempFiles/undodir

    # tools
    mkdir -p ~/.vim/bin 
    cp ./tools/* ~/.vim/bin/ 

    # tags
    mkdir -p ~/tags

    cp -rf ~/.cshrc ~/.cshrc_bak
    cp -rf ~/.bashrc ~/.bashrc_bak

    # for csh
    echo -e "\n" >> ~/.cshrc
    echo "# for vim-verilog" >> ~/.cshrc
    echo "set path = (~/.vim/bin \$path)" >> ~/.cshrc 
    echo "alias ctags_sv 'ctags -f ~/tags/sv_tags --languages=SystemVerilog -R \!* '" >> ~/.cshrc 
    echo "alias ctags_v  'ctags -f ~/tags/v_tags --languages=Verilog -R \!* '" >> ~/.cshrc 
    echo -e "\n" >> ~/.cshrc

    # bash
    echo -e "\n" >> ~/.bashrc
    echo "# for vim-verilog" >> ~/.bashrc
    echo "export PATH=~/.vim/bin:\$PATH" >> ~/.bashrc 
    echo "alias ctags_sv=\"ctags -f ~/tags/sv_tags --languages=SystemVerilog -R \"" >> ~/.bashrc 
    echo "alias ctags_v=\"ctags  -f ~/tags/v_tags --languages=Verilog -R \"" >> ~/.bashrc 
    echo -e "\n" >> ~/.bashrc
}

# 安装linux平台字体
function install_fonts_on_linux()
{
    rm -rf ~/.fonts
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

# 改变一些文件、文件夹属组和用户关系
function chmod_dir()
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
    chmod_dir
    print_logo
}

# 在linux平台安装vimplus
function install_vimplus_on_linux()
{
    type=`get_linux_platform_type`
    echo "linux platform type: "${type}

    if [[ ${type} == "ubuntu" ]] || [[ ${type} == "centos" ]]; then
        begin_install_vimplus
    else
        echo "not support this linux platform type: "${type}
    fi
}

# main函数
function main()
{
    type=`get_platform_type`
    echo "platform type: "${type}

    if [ ${type} == "Linux" ]; then
        install_vimplus_on_linux
    else
        echo "not support platform type: "${type}
    fi
}

# 调用main函数
main

