!SLIDE subsection
# Übung #
## Verändern der History ##

!SLIDE
## Wo? ##
    $ git clone ./workshop/excercise.bundle

## Was? ##
Beispiel Ruby-Gem mit Specs

Branch mit unsauberer History

## Ziel? ##
History sinnvoll gestalten

Bestehende History gezielt ändern

!SLIDE center
# Ausgangslage #
![git_intermediate](ausgangslage.png)

!SLIDE
# Aufgaben #
* Die History soll den Notizen entsprechend verändert werden
  * Commits aufteilen
  * Commits zusammenführen
  * Commit-Nachrichten verändern
* Branch-Pointers manipulieren
* Commits verschieben

!SLIDE subsection
# Lösung #
## Verändern der History ##

!SLIDE smaller
# Vorgehensweise #

    $ git checkout topic/implement_majority
    $ git rebase -i d22592f

## Interactive Rebaseing ##

    pick a4aff4b People over 18 are of age
    fixup ce61cb3 Fixed typo in 'of_age' spec
    fixup 235a7d4 added additional examples to make sure 'of_age' is working
    pick 36589f2 validate age >= 0
    fixup 069618a forgot to add method name to 'private' call
    edit 8496c5f formatting changes, teenager? method, Readme and new version

## Branch: topic/prepare\_for\_release ##

    $ git branch topic/prepare_for_release
    $ git rebase --onto master c820758 topic/prepare_for_release
    $ git checkout topic/implement_majority
    $ git reset --hard c820758

!SLIDE smaller
# Graph #

## Branch: topic/implement_majority ##

    * c820758 People between 13 and 19 are teenagers
    * 50c535c validate age >= 0
    * e297e62 People over 18 are of age

## Branch: topic/prepare\_for\_release ##

    * dcb3a8d version bump => 0.1.0
    * 44822ea project documentation
    * e2baf76 formatting cleanup
