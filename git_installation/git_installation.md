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

!SLIDE commandline incremental
## Commandline ##
    $ git config --global color.ui

.notes nothing to do with  authorization and authentication  architecture principle of git composing existing tools (https, ssh ...)

!SLIDE commandline incremental
## Line endings
.notes show default setting with git config --list

### On Mac and Linux

    $ git config --global core.autocrlf input

### On Windows

    $ git config --global core.autocrlf true



