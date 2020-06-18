#!/bin/bash

# Check if pip is installed
if [ hash pip2 2>/dev/null]; then
    echo "Installing pip for Python 2.7..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py
else
    echo "Pip already installed"
fi

if [python -c 'import virtualenv' 2>/dev/null]; then
    echo "Installing virtualenv..."
    pip2 install virtualenv
else
    echo "VirtualEnv already installed"
fi

if [python -c 'import virtualenvwrapper' 2>/dev/null]; then
    echo "Installing VirtualEnvWrapper..."
    pip2 install virtualenvwrapper
else
    echo "VirtualEnvWrapper already installed"
fi

source /usr/local/bin/virtualenvwrapper.sh

if [ ! -d "$HOME/.virtualenvs" ]; then
    mkvirtualenv -p /usr/bin/python2.7 venv --system-site-packages
fi