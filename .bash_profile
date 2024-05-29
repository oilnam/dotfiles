export PS1="\[\033[36m\]here:\[\033[33;1m\]\w\[\033[m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'

alias ls='ls -GFh'
alias grep="grep --color=auto"
alias less='less -r'
alias gs='git status'
alias lastcommittonow='GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"'
alias fm='gofmt -s -w .'

wenv() {
  if [[ $# -lt 2 ]] ; then
    echo $0 envfile command
    return 1
  fi
  (set -a; source $1; set +a; "${@:2}")
}
eval "$(/opt/homebrew/bin/brew shellenv)"

# use this to run go test for specific file
export testcases="sed -n 's/func.*\(Test.*\)(.*/\1/p' | xargs | sed 's/ /|/g'"
alias testfile='echo $0; go test -v -run $(cat $1 | testcases)'

export PATH=$PATH:$HOME/go/bin



