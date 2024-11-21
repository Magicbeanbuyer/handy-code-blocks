#################################
## push local branch to remote ##
#################################
# Create a new branch:
git checkout -b feature_branch_name

# stage and commit your changes
git commit -am "your commit message"

# Push your branch to the remote repository:
git push --set-upstream origin feature_branch_name


###########################
## push to remote master ##
###########################
git push origin master


#################################
## pull from remote repository ##
#################################
git pull --all


##########################
## delete merged branch ##
##########################
# prune
git remote prune origin --dry-run
git remote prune origin 

# delete branch
git checkout master
git branch -D feature_branch_name

# update local repo
git pull --all


##########################
## git stash ##
##########################
# tutorial https://www.youtube.com/watch?v=KLEDKgMmbBI

git stash save "my messsage"
git stash list
git stash apply stash@{0}

# get the first item on the stash list
git stash pop

# delete a stashed item
git stash drop stash@{0}

# delete all stashed items
git stash clear

# empty git commit
git commit --allow-empty -m ""

# clone one branch
git clone -b go-scientist-graphql git@git-ssh.deepl.dev:deepl/dap/dap.git