DIR_CURRENT_EXECUTION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR_PROJECT=`dirname $0`
DIR_LIB=$DIR_PROJECT/lib
DIR_ALIAS=$DIR_PROJECT/aliases

# Libraries
for file in $DIR_LIB/*.zsh; do
    source $file
done

# Aliases
for file in $DIR_ALIAS/*.zsh; do
    source $file
done
