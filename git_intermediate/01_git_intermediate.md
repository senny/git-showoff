!SLIDE subsection
# Intermediate Git #

!SLIDE
# Stash #

* Aktuelle Arbeiten "zwischenspeichern"
* Kann jederzeit "hervorgeholt" werden
* Äderungen auf einen anderen Branch verschieben

!SLIDE commandline incremental

    $ git status
     ## master
     M git_intermediate/git_intermediate.md

    $ git stash

    $ git status
     ## master

    $ git stash pop

    $ git status
     ## master
     M git_intermediate/git_intermediate.md

!SLIDE bullets
# Autor von Code bestimmen #

* Wer hat eine bestimmte Zeile geschrieben
* Wer hat ein File alles bearbeitet
* Wann wurde eine Zeile das letzte Mal verändert

!SLIDE commandline incremental smaller
    $ git blame daemon.c
    979e32fa (Randal L. Schwartz      2005-10-25 16:29:09 -0700    1) #include "cache.h"
    85023577 (Junio C Hamano          2006-12-19 14:34:12 -0800    2) #include "pkt-line.h"
    77cb17e9 (Michal Ostrowski        2006-01-10 21:12:17 -0500    3) #include "exec_cmd.h"
    49ba83fb (Jon Loeliger            2006-09-19 20:31:51 -0500    4) #include "interpolate.h"
    f8ff0c06 (Petr Baudis             2005-09-22 11:25:28 +0200    5)
    85023577 (Junio C Hamano          2006-12-19 14:34:12 -0800    6) #include <syslog.h>
    85023577 (Junio C Hamano          2006-12-19 14:34:12 -0800    7)
    695dffe2 (Johannes Schindelin     2006-09-28 12:00:35 +0200    8) #ifndef HOST_NAME_MAX
    695dffe2 (Johannes Schindelin     2006-09-28 12:00:35 +0200    9) #define HOST_NAME_MAX 256
    695dffe2 (Johannes Schindelin     2006-09-28 12:00:35 +0200   10) #endif
    695dffe2 (Johannes Schindelin     2006-09-28 12:00:35 +0200   11)
    415e7b87 (Patrick Welche          2007-10-18 18:17:39 +0100   12) #ifndef NI_MAXSERV
    415e7b87 (Patrick Welche          2007-10-18 18:17:39 +0100   13) #define NI_MAXSERV 32
    415e7b87 (Patrick Welche          2007-10-18 18:17:39 +0100   14) #endif
    415e7b87 (Patrick Welche          2007-10-18 18:17:39 +0100   15)
    9048fe1c (Petr Baudis             2005-09-24 16:13:01 +0200   16) static int log_syslog;
    f8ff0c06 (Petr Baudis             2005-09-22 11:25:28 +0200   17) static int verbose;
    1955fabf (Mark Wooding            2006-02-03 20:27:04 +0000   18) static int reuseaddr;

!SLIDE bullets
# Cherry Picking #

* Commits über mehrere Branches verwenden
* Bugfix auf mehrere Releases anwenden
* Nur einen Teil eines Branches integrieren

!SLIDE commandline incremental
    $ git cherry-pick 6018dbfa70
    Finished one cherry-pick.
    [test e144b96] Add unit tests for index manipulation
     Author: Vicent Marti <tanoku@gmail.com>
     4 files changed, 209 insertions(+), 0 deletions(-)

!SLIDE smaller
# Merging #

* Normalerweise erstellt Git bei einem Merge ein Merge-Commit
* Ein Merge-Commit hat mehr als 1 Parent.
* Ein Merge kann rückgänig gemacht werden, wenn man das Merge-Commit
  entfernt

!SLIDE smaller
# Merging: Fast Forward #

* Merge von einem nicht abgezweiten Branch => Fast Forward
* Fast Forward Merge => kein Merge-Commit
* Fast Forward Merge => Branch in der History nicht mehr sichtbar

!SLIDE center

## git merge --no-ff topic/feature ##
![git_intermediate](merge_no_ff.png)

## git merge --ff-only topic/feature ##
![git_intermediate](merge_ff_only.png)

!SLIDE
# Rebase #

!SLIDE center
# Ausgangslage #
![git_intermediate](rebase-0.png)

!SLIDE center
# Merge #
![git_intermediate](rebase-1.png)

!SLIDE center
# Rebase #
![git_intermediate](rebase-2.png)

!SLIDE center
# Merge (FastForward) #
![git_intermediate](rebase-3.png)

!SLIDE center
# Rebase II #

!SLIDE center
# Ausgangslage #
![git_intermediate](rebase2-0.png)

!SLIDE center
## git rebase --onto master server client ##
![git_intermediate](rebase2-1.png)

!SLIDE center
## git checkout master && git merge client ##
![git_intermediate](rebase2-2.png)

!SLIDE center
## git rebase master server ##
![git_intermediate](rebase2-3.png)

!SLIDE center
## git checkout master && git merge server ##
![git_intermediate](rebase2-4.png)


!SLIDE smaller
# Rebase | Merge #

* NICHT rebasen mit veröffentlichten Commits
* NICHT rebasen bei grossen Branches
* Merge ist in der History sichtbar (wenn nicht FF)
* Rebase simuliert lineare History
* Rebase --onto um Commits zu verschieben
