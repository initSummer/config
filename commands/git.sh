alias gita="git add -u"
alias gitc="git commit -m"
alias gitl="git log"
alias grep='grep --color=auto'
alias gits="git status"

get_git_branch() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ -n "$branch" ] && [ "$branch" != "HEAD" ]; then
        echo " $branch"
    fi
}
