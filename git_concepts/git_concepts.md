!SLIDE subsection

# Git Konzepte #

!SLIDE center
## Delta Storage (z.B. Subversion) ##
![](18333fig0104-tn.png)

## Snapshot Storage (z.B. GIT) ##
![](18333fig0105-tn.png)

!SLIDE bullets
# GIT does not rely on a central repository#
* Every repository is a clone
 ** contains all information
 ** can work with the clone independently
 ** no master repository

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

!SLIDE bullets
# Branches in GIT #
* Branch = Referenz auf ein Commit
* Ausgecheckter Branch "bewegt" sich beim Committen
* Jedes Repository hat seine Branches

!SLIDE bullets
# Das .git Verzeichnis #
* liegt im Root der Working Copy
* enthält alle Commits
* enthält Branches
* enthält (lokale) Konfiguration etc.
!SLIDE center
# GIT Einführung #
