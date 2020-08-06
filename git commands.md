# push local branch to remote

1. Edit your files.

2. Create a new branch:
`git checkout -b feature_branch_name`

3. stage and commit your changes
`git commit -am "your commit message"`

3. Push your branch to the remote repository:
`git push -u origin feature_branch_name`


[link](https://www.freecodecamp.org/forum/t/push-a-new-local-branch-to-a-remote-git-repository-and-track-it-too/13222)



# push to remote master 
`git push origin master`

# pull from remote repository
`git pull --all`

# delete a branch after the remote branch is merged and deleted

1. git remote prune origin --dry-run
2. git remote prune origin 
3. git branch -d feature_branch_name