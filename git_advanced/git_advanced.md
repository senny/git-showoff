!SLIDE

# Advanced Git #

!SLIDE commandline
# Empty Branch #

    $ git symbolic-ref HEAD refs/heads/newbranch
    $ rm .git/index
    $ git clean -fdx
    <do work>
    $ git add your files
    $ git commit -m 'Initial commit'

!SLIDE
# Interactive Rebase #

!SLIDE small
# Submodules #

* Git-Repositories innerhalb von Git-Repositories
* Werden unabhängig gepflegt
* Submodules werden auf Commits "fixiert"

!SLIDE small commandline incremental

    $ git submodule add git@github.com:senny/git-showoff.git doc/git
    $ git add doc/git
    $ git commit -m "Git Dokumentation hinzugefügt"
    $ git push

    $ git clone file:///git/my_project
    $ git submodule init
    Submodule 'doc/git' () registered for path 'doc/git'
    $ git submodule update