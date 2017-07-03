# check if it is a git repository, then show current branch, thanks to
# //www.leaseweb.com/labs/2013/08/git-tip-show-your-branch-name-on-the-linux-prompt/
parse_git_branch () { 
    BRANCH=$(git branch 2> /dev/null | grep \* | awk '{print $2}');
    CHANGES=$(git status --porcelain --untracked-files=no 2> /dev/null | wc -l);
    CLEAN=${BRANCH}
    DIRTY=${BRANCH}:${CHANGES}

    if [ $CHANGES -eq 0 ]; then
        echo \($CLEAN\)
    elif [ $CHANGES -gt 0 ]; then
        echo \($DIRTY\)
    fi
}
# add $(parse_git_branch) into your $PS1 to activate this.
