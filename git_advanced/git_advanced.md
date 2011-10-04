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
