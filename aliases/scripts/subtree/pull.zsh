
git remote -v | while read line
do
    echo $line
    if [[ $line == *"(fetch)" ]]
    then
        echo "*** Pulling $line"
	git subtree pull --prefix=Apps/test --squash -m 'Merge $line into project' app-test $(git_current_branch)
        echo "\n"
    fi
done
