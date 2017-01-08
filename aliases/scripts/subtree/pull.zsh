
PULL_IDENTIFIER="(fetch)"

git remote -v | while read line
do
    if [[ $line == *"${PULL_IDENTIFIER}" && $line != "origin"* ]]
    then
        echo "*** Pulling ${line%$PULL_IDENTIFIER}"
	git subtree pull --prefix=Apps/test --squash -m 'Merge $line into project' app-test ${git_current_branch}
    fi
done
