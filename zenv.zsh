#!/bin/zsh

if [ ! $ZENV_ENV_PATH ]
then
    echo "ZENV_ENV_PATH environment variable needs to be set."
    exit 1
fi

if [ ! $# -gt 0 ]
then
    echo "usage: zenv {env}"
elif [ $1 = 'list' ]
then
    if [ -f $ZENV_ENV_PATH/$2.zsh ]
    then
        echo "Environment:" $2
        cat $ZENV_ENV_PATH/$2.zsh
    else
        echo "Available Environments:"
        ls $ZENV_ENV_PATH | grep zsh
    fi
elif [ $1 = '.' ]
then
    CURRENT_DIR="$(basename `pwd`)"
    if [ -f $ZENV_ENV_PATH/$CURRENT_DIR.zsh ]
    then
        source $ZENV_ENV_PATH/$CURRENT_DIR.zsh
        echo "Environment Initialized:" $CURRENT_DIR
    else
        echo "Did not find matching environment for:" $CURRENT_DIR
    fi
elif [ -f $ZENV_ENV_PATH/$1.zsh ]
then
    source $ZENV_ENV_PATH/$1.zsh
    echo "Environment Initialized:" $1
else
    echo "Environment: '$1' not found."
fi
