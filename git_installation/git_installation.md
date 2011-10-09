!SLIDE
# Git Installation #

!SLIDE
## On UNIX ##

* Compiling from Source
    * `git://git.kernel.org/pub/scm/git/git.git`
* Binaries from a Package manager

!SLIDE
## On Mac ##

* [MacPorts](http://www.macports.org/) (user-compiled)
* [HomeBrew](http://github.com/mxcl/homebrew) (user-compiled)
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

.notes nothing to do with  authorization and authentication    architecture principle of git composing existing tools (https, ssh ...)

!SLIDE commandline
## Line endings ##
.notes show default setting with git config --list

### On Mac and Linux ###
    $ # Force files to be LF in the repo
    $ git config --global core.autocrlf input

### On Windows ###
    $ # Force Windows to convert to platform on checkout and to LF on commit
    $ git config --global core.autocrlf true


 
