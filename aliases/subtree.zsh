# Aliases

GIT=$(which git)

# Check if git exist
if [ ! -x "$GIT" ]
then
    echo "[WARNING] 'git' is not installed on the system!"
    return
fi

SCRIPTS="sh $DIR_ALIAS/scripts/subtree"

alias slist="$SCRIPTS/list.zsh"
alias spull="$SCRIPTS/pull.zsh"
alias spush="$SCRIPTS/push.zsh"
