!SLIDE
# Git Tips #

!SLIDE commandline small
# Aliases #

    $ git config alias.co checkout
    $ git config alias.mnf "merge --no-ff"
    $ git config alias.l "log --decorate --oneline"
    $ git config alias.lg "log --graph"
    $ git config alias.lga "log --decorate --oneline --graph --all"

!SLIDE commandline
# Bash Completion #

    $ cp /usr/local/Cellar/git/1.7.6.1/etc/bash_completion.d/git-completion.bash ~/.git-bash-completion.sh
    $ echo "source ~/.git-bash-completion.sh" >> ~/.bash_profile
    $ . ~/.bash_profile

!SLIDE commandline
# Farben #

    $ git config --global color.branch auto
    $ git config --global color.diff auto
    $ git config --global color.interactive auto
    $ git config --global color.status auto