# Shortcut for git commands
# Require:
# - git

# Find and echo branch name if in a git repository
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | sed 's/refs\/heads\///')
  if [[ $branch == "" ]];
  then
    echo " "
  else
    echo ' ('$branch') '
  fi
}

# shortcut to easily create a new branch based on the current Jira ticket
# usage: "git_new_branch feat"
function git_new_branch()
{
	git checkout -b ${1}/$(current-jira-ticket)
}

# shortcut to checkout to main branch, and delete the current branch
# usage: "git_done"
function git_done()
{
	branch=$(git branch --show-current)
	git checkout main
	git pull
	git branch -d ${branch}
}

# shortcut to add all files, commit with message '$1' then push
# usage: "git_add_co_push docs"
function git_add_co_push()
{
	git add .
	git co -m "$1"
	git push
}

# shortcut to move to the branch from the clipboard, and ensure is up-to-date with the main branch
# usage: copy the branch name (type 'b' from Gitlab UI), then "git_renovate"
# it's named renovate because I mainly use it when I batch renovate MRs, but it's work with any branch
function git_renovate()
{
	git checkout $(pbpaste)
	git merge main --no-edit
}

