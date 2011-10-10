# Initial
git init
git add filename
mkdir subdir
cd subdir
touch file
git add file
git status
-> nur file und nicht dir wird von git verwaltet // leere verzeichnisse haben keinen Inhalt
cd ..
tree // to show file system structure
git add -A
git add -u
git status
git commit -m "message"
tree
-> nur ein toplevel .git verzeichniss sonst keine
git log

# Grundlagen

git rm filename
git commit
explain status change from  tracked -> untracked

## moving files
touch readme.txt
echo "Chapter 1" >> readme.txt
git add
git commit -a -m "message"
git log -1 -stat

### via git
git mv readme.txt readme.html
git status
git commit -m "renamed file"
git log  readme.html
git log --follow --stat --summary readme.html

### via commandline
mv from to
git status

git add to
git rm from

### via IDE refactoring
change filesystem as well as content

create java class in subdir package

git add
git diff
git log --follow --stat --summary -M70%

## Revert
todo add proper workflow
git revert HEAD~3
git log

## Reset
todo add proper workflow
git reset --hard HEAD

# Branching

git branch feature1
git branch commit
git branch tag
git checkout feature1
git commit 
git log master..feature1
git diff master

# Merging

git merge feature1
git merge -s recursive -Xtheirs
git merge -s recursive -Xours
gitk
git log --graph

# Merge Konflikte auflösen
git diff // zeigt nur KOnflikte an
git show :1:file  // the file in a common ancestor of both branches
git show :2:file  // the version from HEAD.
git show :3:file  // the version from MERGE_HEAD.
file, das Konflikt enthält, editieren oder mergetool
git add
git commit //ohne message. git erzeugt message die konfliktdateien enthält 




