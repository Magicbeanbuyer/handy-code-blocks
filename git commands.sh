#################################
## push local branch to remote ##
#################################
# Create a new branch:
git checkout -b feature_branch_name

# stage and commit your changes
git commit -am "your commit message"

# Push your branch to the remote repository:
git push -u origin feature_branch_name


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
git pull -a 