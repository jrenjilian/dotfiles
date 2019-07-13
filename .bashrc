alias bae='vim'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias la='ls -A'
alias got='git'
alias gs='git status'
alias gd='git diff'
alias gdt='git difftool --dir-diff'
alias gu='git checkout --'
alias ga='git add -A'
alias gc='git commit -m'
alias gca='git add -A; git commit -m'
alias pull='git pull'
alias push='git push'
alias go='git push -u origin'
alias get='git fetch --prune; git pull'
alias gco='git checkout'
alias glb='git branch -l'
alias gdb='git branch -d'
alias gm='git checkout master'
alias gl='git lg'
alias gln='git log --oneline -n'
alias gf='git fetch'
alias fetch='git fetch'
alias amen='git commit --amend --no-edit'
alias gw='gulp && gulp watch'
alias gr='git rebase'
alias gra='git rebase --abort'
alias gg='git grep'
source ~/.bash_git
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
	__git_complete gco _git_checkout
	__git_complete pull _git_pull
	__git_complete push _git_push
	__git_complete go _git_push
	__git_complete get _git_pull
	__git_complete gdb _git_branch
fi
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
[[ "$-" != *i* ]] && return
cl() {
	cd "$@"
	ls .
}
gb() {
	git checkout -b $1
}

PS1='\[\033[38;5;130m\]\W\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '
