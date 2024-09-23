
function gcd() {
    current=$(git_current_branch)
    target="${1-$(git_main_branch)}"

    git checkout $target
    git pull origin $target
    git branch -D $current
}
function ggl() {
    git pull --rebase origin "$(git_current_branch)"
}
function ggp() {
    git push origin "$(git_current_branch)"
}
function git_current_branch () {
        local ref
        ref=$(git symbolic-ref --quiet HEAD 2> /dev/null) 
        local ret=$? 
        if [[ $ret != 0 ]]
        then
                [[ $ret == 128 ]] && return
                ref=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)  || return
        fi
        echo ${ref#refs/heads/}
}
function git_main_branch () {
        command git rev-parse --git-dir &> /dev/null || return
        local ref
        for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk,mainline,default,stable,master}
        do
                if command git show-ref -q --verify $ref
                then
                        echo ${ref:t}
                        return 0
                fi
        done
        echo master
        return 1
}
function glg() {
    git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat
}
function glo() {
    git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all
}
