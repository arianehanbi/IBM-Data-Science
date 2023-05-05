# Git commands
# https://try.github.io/

git init   : clones an existing repository
git add    : moves changes from the working directory to the staging area
git status : allows you to see the state of your working directory and the stages snapshot of your changes
git commit : takes your staged snapshot of changes and commits them to the project
git reset  : undoes changes that you have made to the files in your working directory
git log    : enables you to browse previous changes to a project
git branch : lets you create an isolated environment within your repository to make changes
git checkout : lets you see and change existing branches
git merge  : lets you put everything back together again



1. Create a new local repo

mkdir myrepo
cd myrepo
git init              # In this myrepo directory lets create a new local git repository 
ls -la .git           # Verify by doing a directory listing by pasting the following command


2. Create/ Add a file to the local repo

touch newfile
git add newfile       # Add this file to the repo


3. Commit chagnes

git config --global user.email "you@example.com"     # Before we can commit our changes, tell git who we are
git config --global user.name "Your Name"

git commit -m "added newfile"


4. Create a branch

git branch mybranch      # To make subsequent changes in our repo, lets create a new branch in our local repostitory


5. Get a list of branches and active branch
** Note the output lists two branches
** - the default master branch with an asterix * next to it indicating that it is the currently active branch, and the newly created mybranch **

git branch


6. Switch to using a different branch
** Note that the asterix * is now next to the my1stbranch indicating that it is now active **

git checkout mybranch
git branch

** As a shortcut to creating and branch using git branch and 
** then making it active using git checkout you can use the shortcut like follows 
** with the -b option that creates the branch and makes it active in one step **

git checkout -b mybranch


7. Make changes in your branch and check the status of files added/changed

echo 'Here is some text in my newfile.' >> newfile
cat newfile
touch readme.md
git add readme.md
git status

** The output of the git status command shows that the files readme.md has been added to the branch 
** and is ready to be committed, since we we added it to the branch using git add. 
** However, even though we modified the file called newfile we did not explicitly add it using git add 
** and hence it is not ready to be committed:

** A shortcut to adding all modifications and additions is to use the following git add command with an asterix * … 
** this will also add the modified file newfile to the branch and make it ready to be committed:

git add *
git status


8. Commit and review commit history

git commit -m "added readme.md modified newfile"
git log


9. Revert committed changes
** Sometimes you may not fully test your changes before comitting them and may have undesirable consequences … 
** you can back out your changes by using a git revert command like the following. 
** You can either specify the id of your commit that you can see from the previous log output 
** or use the shortcut HEAD to rollback the last commit:

git revert HEAD --no-edit


10. Merge changes into another branch

touch goodfile
git add goodfile
git commit -m "added goodfile"
git log

git checkout master

git merge mybranch
git log

git branch -d mybranch




