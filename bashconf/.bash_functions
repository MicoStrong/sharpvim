function cl() {
    DIR="$*";
    # if no DIR given, go home
    if [ $# -lt 1 ]; then 
        DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
    ls -F --color=auto
}

# man page高亮
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


