# Various helper for Jira 
#
# Require:
# - the jira-cli to be setup https://github.com/ankitpokhrel/jira-cli
# - tmux (some commands assume tmux is used and ticket is within the session or window name)
#
# Install: 
# - brew tap ankitpokhrel/jira-cli && brew install jira-cli

# Fetch the current Jira ticket ID, check the window name, then the session name
alias current-jira-ticket='printf "%s %s" "$(tmux display-message -p "#W")" "$(tmux display-message -p "#S")" | grep -Eo "[a-zA-Z0-9]{2,3}-[0-9]+" | head -n 1'

# Shortcut to move the status of the current ticket
alias jira-move='echo $(current-jira-ticket); jira issue move $(current-jira-ticket)'

# Shortcut to view the current ticket
alias jira-view='echo $(current-jira-ticket); jira issue view $(current-jira-ticket)'

# Shortcut to add command to the current ticket
alias jira-comment='echo $(current-jira-ticket); jira issue comment add $(current-jira-ticket)'

