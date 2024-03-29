#!/bin/bash

# linux
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo 'Linux'

    . /etc/os-release
    case $ID in
        ubuntu)
            echo 'ubuntu'
            sudo apt-get install -y software-properties-common
            sudo add-apt-repository -y ppa:neovim-ppa/unstable
            sudo apt-get -y update
            sudo apt-get install -y neovim
            sudo apt-get -y upgrade
            ;;
        arch)
            echo 'Arch'
            ;;
    esac
# mac
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo 'mac'

    if ! command -v brew &> /dev/null 
    then
        echo 'installing brew...'
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo 'brew already installed'
    fi
