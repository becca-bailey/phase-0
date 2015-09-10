# 1.5 Tracking Changes Reflection

**How does tracking and adding changes make developers' lives easier?**

Tracking changes not only allows an individual developer to go back and compare newer files to older files to troubleshoot problems, but it also allows developers to more easily work on a team.  It allows a team to track who made what change to a file, and allows them to compare branches and decide which changes to keep.

**What is a commit?**

A commit is a snapshot of a file with its current changes that can stay on your local computer, or be pushed to GitHub.

**What are the best practices for commit messages?**

Commit messages can be detailed or brief--when working on a team it is best practice to use "git commit -v" and leave a detailed messages about which changes you made to the file, and why you made them.

**What does the HEAD^ argument mean?**

HEAD^ will return to the most recent commit.  You can use "git reset --soft HEAD^" to changes the files from the last commit.  You can also go back farther using HEAD-2, HEAD-3, etc.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**

1.  Make changes to files in your working directory.  To do make changes to a feature-branch, use "git checkout -b branch-name" to create a new branch.

2.  Check the status of your files using "git status".  Use "git add ____" or "git add ." to untracked files or changes to your commit.

3.  Commit changes using "git commit -m 'commit message'" or "git commit -v".  You can push your commit to the remote repository using "git push origin branch".

**Write a handy cheatsheet of the commands you need to commit your changes.**

**git checkout -b branch-name** - creates a new branch

**git co branch-name** - moves to a different branch

**git status** - checks for untracked files

**git add** - adds untracked files to the commit

**git commit -m "commit message"** - commits files

**git commit -v** - commits files and opens text editor for detailed message

**git remote add [url]** - connects local repository to GitHub

**git push origin branch** - pushes changes to github

**git pull origin branch** - fetches and merges changes from remote repository

**git branch -d branch-name** - deletes branch

**What is a pull request and how do you create and merge one?**

A pull request is a feature of GitHub that allows you to review the changes on a branch, or invite someone on your team to review changes.  Once changes have been reviewed and approved, you can merge the branches on GitHub.

**Why are pull requests preferred when working with teams?**

Pull requests allow changes to be approved by team members before integrating them into the master branch.