# Aliases

GIT=$(which git)

# Check if git exist
if [ ! -x "$GIT" ]
then
    echo "[WARNING] 'git' is not installed on the system"
    return
fi

SUBTREE_LIB=$DIR_LIB/subtree

alias slist=$SUBTREE_LIB/list.zsh
#alias spull=$SUBTREE_LIB/pull.sh
#alias spush=$SUBTREE_LIB/push.sh
#alias sco=$SUBTREE_LIB/checkout.sh
#alias scob=$SUBTREE_LIB/checkoutb.sh
#alias stag=$SUBTREE_LIB/tag.sh
