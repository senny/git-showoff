!SLIDE subsection
# Git Installation #

!SLIDE commandline
## On UNIX ##

### Compiling from Source

    $ git clone git://git.kernel.org/pub/scm/git/git.git

### Binaries from a Package manager

!SLIDE
## On Mac ##

* [HomeBrew](http://github.com/mxcl/homebrew) (user-compiled)
* [MacPorts](http://www.macports.org/) (user-compiled, not recommended)
* [git-osx-installer](http://code.google.com/p/git-osx-installer/) (precompiled)

!SLIDE
## On Windows ##

* [msysGit](http://code.google.com/p/msysgit/)
* cygwin

!SLIDE center
# Git Setup and Getting started #

!SLIDE commandline incremental
## User identity ##

    $ git config --global user.name "Firstname Lastname"
    $ git config --global user.email "your_email@youremail.com"

.notes nothing to do with  authorization and authentication    architecture principle of git composing existing tools (https, ssh ...)

!SLIDE commandline
# Farben #

    $ git config --global color.ui
    $ git config --global color.branch auto
    $ git config --global color.diff auto
    $ git config --global color.interactive auto
    $ git config --global color.status auto

!SLIDE commandline smaller
# Bash Completion #

    $ cp /usr/local/Cellar/git/1.7.6.1/etc/bash_completion.d/git-completion.bash ~/.git-bash-completion.sh
    $ echo "source ~/.git-bash-completion.sh" >> ~/.bash_profile
    $ . ~/.bash_profile


!SLIDE commandline
## Zeilenumbrüche ##
.notes show default setting with git config --list

### Mac und Linux

    $ git config --global core.autocrlf input

### Windows

    $ git config --global core.autocrlf true



