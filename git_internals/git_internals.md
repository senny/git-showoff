!SLIDE subsection
# Git Internals #

!SLIDE bullets
# Der .git Ordner #

* Konfigurationsdatei
* Hooks
* Index
* Objektdatenbank
* Referenzen

!SLIDE
# Objekt Datenbank #

!SLIDE center
![](objekt_datenbank.jpg)

!SLIDE center
![](blob.jpg)

!SLIDE center
![](tree.jpg)

!SLIDE center
![](commit.jpg)

!SLIDE center
![](tag.jpg)

!SLIDE bullets
# Referenzen #

* Pointer auf ein Commit Objekt
* Werden im Ordner .git/refs gespeichert
* Datei mit dem Commit-Hash als Inhalt

!SLIDE commandline
    $ cat .git/refs/heads/master
    2d5f0b92c01b3af6b18fa9fd4b9457f28c55f8c9

!SLIDE bullets
# Symbolische Referenzen #

* Pointer auf ein Branch oder Commit Objekt
* Werden im Ordner .git/ gespeichert
* Datei mit dem Pfad zum Branch oder Commit-Hash als Inhalt

!SLIDE commandline

## Branch ##
    $ git checkout master
    $ cat .git/HEAD
    ref: refs/heads/master

## Commit (detached HEAD) ##
    $ git checkout 3ab0946
    $ cat .git/HEAD
    3ab0946694019e9ec819cddd4999b635449ecc25

!SLIDE
# Vorgänge in einem Repository #

!SLIDE center
![](flow_01.jpg)

!SLIDE center
![](flow_02.jpg)

!SLIDE center
![](flow_03.jpg)

!SLIDE center
![](flow_04.jpg)

!SLIDE center
![](flow_05.jpg)

!SLIDE center
![](flow_06.jpg)

!SLIDE center
![](flow_07.jpg)

!SLIDE center
![](flow_08.jpg)

!SLIDE center
![](flow_09.jpg)
