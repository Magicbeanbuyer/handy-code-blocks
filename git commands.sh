# stage all tracked files and commit your changes
git commit -am "your commit message"
# stage all files, both tracked and untracked, and commit your changes
git add -A && git commit -m "save"

# empty git commit
git commit --allow-empty -m ""

# Push your branch to the remote repository:
git push --set-upstream origin feature_branch_name

# update local repo
git pull --all

# prune
git remote prune origin --dry-run
git remote prune origin 

# delete branch
git checkout main
git branch -D feature_branch_name

# git stash
git stash save "my messsage"
git stash list
git stash apply stash@{0}

# get the first item on the stash list
git stash pop

# delete a stashed item
git stash drop stash@{0}

# delete all stashed items
git stash clear

# clone one branch
git clone -b go-scientist-graphql git@git-ssh.deepl.dev:deepl/dap/dap.git