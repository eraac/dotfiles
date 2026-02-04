# Various helpers

alias ll="ls -la"
alias ls='ls -GFh'

# install: brew install ccat
if command -v ccat > /dev/null 2>&1; then
	alias cat="ccat" # better cat
fi

# install: brew install coreutils
if command -v gdate > /dev/null 2>&1; then
	alias date="gdate" # replace shitty date from MacOS
fi

# count number of line of code for a specific file extension
# usage: "loc go"
function loc()
{
    find . -name "*.${@}" | xargs wc -l
}

