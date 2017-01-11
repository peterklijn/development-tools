function sub {
    if [[ -n "$1" ]]; then
        subl -n $1
    elif ls | grep -q .sublime-project; then
        ls | grep .sublime-project | xargs subl
    else
        subl -n .
    fi
}
alias sb=sub
