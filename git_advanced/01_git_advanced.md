!SLIDE subsection
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

!SLIDE smaller commandline incremental
# Bugs mit Bisect finden #

    $ git bisect start
    $ git bisect bad
    $ git bisect good v1.0
    Bisecting: 6 revisions left to test after this
    [ecb6e1bc347ccecc5f9350d878ce677feb13d3b2] error handling on repo

    $ git bisect good
    Bisecting: 3 revisions left to test after this
    [b047b02ea83310a70fd603dc8cd7a6cd13d15c04] secure this thing

    $ git bisect bad
    Bisecting: 1 revisions left to test after this
    [f71ce38690acf49c1f3c9bea38e09d82a5ce6014] drop exceptions table

    $ git bisect good
    b047b02ea83310a70fd603dc8cd7a6cd13d15c04 is first bad commit
    commit b047b02ea83310a70fd603dc8cd7a6cd13d15c04
    Author: PJ Hyett <pjhyett@example.com>
    Date:   Tue Jan 27 14:48:32 2009 -0800

        secure this thing

    :040000 040000 40ee3e7821b895e52c1695092db9bdc4c61d1730
    f24d3c6ebcfc639b1a3814550e62d60b8e68a8e4 M  config

    $ git bisect reset

!SLIDE commandline
# Bisect automatisieren #

    $ git bisect start HEAD v1.0
    $ git bisect run test-error.sh
