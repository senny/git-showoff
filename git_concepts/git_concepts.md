!SLIDE subsection

# Git Konzepte #

!SLIDE
## Architecture ##

!SLIDE center
![plumbing_and_porcelain](plumbing_porcelain.png)

!SLIDE center
![plumbing_and_porcelain_commands](plumbing_porcelain_2.png)

!SLIDE code
log HEAD^^ ist eine Kombination aus rev-parse + log

!SLIDE
# Git Tips #

!SLIDE commandline small
# Aliases #

    $ git config alias.co checkout
    $ git config alias.mnf "merge --no-ff"
    $ git config alias.l "log --decorate --oneline"
    $ git config alias.lg "log --graph"
    $ git config alias.lga "log --decorate --oneline --graph --all"


!SLIDE bullets
## Storage ##

* Git storage internals
* Git hashing

!SLIDE center
## Delta Storage (z.B. Subversion) ##
![](18333fig0104-tn.png)

## Snapshot Storage (z.B. GIT) ##
![](18333fig0105-tn.png)


!SLIDE
## Git uses DAG storage ##

!SLIDE
## Directed Acyclic Graph ##

!SLIDE
## vollständige Kopie des Graphen bei jedem Checkin ##

!SLIDE bullets
## Optimierung ##
* Verwendung von hardlinks
* zlib zum komprimieren

!SLIDE
## Server orientierte VCSs verwenden sequentielle Versions Nummern ##

!SLIDE
## Git verwendet den SHA-1 hash

!SLIDE bullets
# Ein Commit in GIT umfasst #
* Autor (Name, E-Mail, Datum/Zeit)
* Committer (Name, E-Mail, Datum/Zeit)
* 0-n Parents
* Beschreibungstext
* Snapshot

!SLIDE bullets
# Alle Commits in GIT #
* werden durch den SHA1-Hash ihres Inhalts eindeutig identifiziert
* sind unveränderlich
* werden wiederverwendet

!SLIDE
## Tags ##

!SLIDE commandline
## Leichtgewichtig
    $git tag before_refactoring

## Annotiert
    $git tag -a v1.4 -m 'my version 1.4'

!SLIDE bullets
# Branches in GIT #
* Branch = Referenz auf ein Commit
* Ausgecheckter Branch "bewegt" sich beim Committen
* Jedes Repository hat seine Branches

!SLIDE commandline
# Branching #

## Erzeugen

    $ git branch branchname

## Anzeigen

    $ git branch -a
    $ git branch -r
    $ git branch --no-merged
    $ git branch --merged

## Löschen

    $ git branch -d branchname

!SLIDE commandline
# Merging

    $ git merge branchname

!SLIDE bullets
# Merge Strategien
* recurisve
* octopus

!SLIDE
# Merge Konflikte lösen

!SLIDE
# Merge Tooling
## Wie konfiguriert man ein graphisches GUI

!SLIDE bullets
# Das .git Verzeichnis #
* liegt im Root der Working Copy
* enthält alle Commits
* enthält Branches
* enthält (lokale) Konfiguration etc.
