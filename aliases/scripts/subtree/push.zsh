# Push all subtrees commits to their remote projects

PULL_IDENTIFIER="(push)"
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

git remote -v | while read line
do
    if [[ $line == *"${PULL_IDENTIFIER}" && $line != "origin"* ]]
    then
        PROJECT_DATA=($line)
        PROJECT_NAME=${PROJECT_DATA[0]}
        PROJECT_URL=${PROJECT_DATA[1]}
        PROJECT_DIR="$(tr '[:lower:]' '[:upper:]' <<< ${PROJECT_NAME:0:1})${PROJECT_NAME:1}"
        PREFIX_DIR=${PROJECT_DIR%-*}s/${PROJECT_DIR##*-}
        echo "*** Pushing $PROJECT_NAME ($PROJECT_URL)"
        git subtree push --prefix=$PREFIX_DIR $PROJECT_NAME $CURRENT_BRANCH
        echo ""
    fi
done

echo "Done!"
