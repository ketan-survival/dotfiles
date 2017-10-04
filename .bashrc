# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

delete() {
  git push origin :$1
  git branch -D $1
}

alias pbc='xargs echo -n | pbcopy'
alias rtest='bundle exec ruby -I "lib:test"'
alias rake='bundle exec rake'
alias gl='git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short -n 20'
alias eyd-staging="ey deploy --environment='staging_small' --account='survival-new'"
alias eyd-production="ey deploy --environment='maloca_production' --account='survival-new'"
alias lsl='ls -halFG'
alias be='bundle exec'
alias gitx='open -a GitX .'
LS_COLORS=$LS_COLORS:'di=1;36:'; export LS_COLORSexport PATH="$(brew --prefix qt@5.5)/bin:$PATH"
