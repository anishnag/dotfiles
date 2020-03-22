# fetch current git branch
function parse_git_branch {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}

# silence default shell warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# set environment variables
export CLICOLOR=1
export EDITOR=vi
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(parse_git_branch)\$\[\033[00m\] '
export VISUAL=${EDITOR}
