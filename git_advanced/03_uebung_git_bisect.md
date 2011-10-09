!SLIDE subsection
# Übung #
## Commits finden mit git-bisct ##

!SLIDE
## Wo? ##
    $ git clone ./workshop/solutions.bundle
    $ cd solutions
    $ git checkout interactive_rebase_to_split_polluted_branch

## Was? ##
git-bisect verwenden um ein Commit zu identifizieren

## Ziel? ##
Arbeitsweise von git-bisect verstehen

git und die Shell kombinieren

!SLIDE center
# Aufgabe #
Finde das Commit, welches den Constructor `Person.new('jack', 10)`
eingeführt hat. Verwende dazu git-bisect und ein shell-skript.

!SLIDE bullets
# Tipps #

* git-bisect erwartet, dass ein Commit einen Bug einführt. Damit man
  das Commit findet, welche eine neue Funktionalität einführt muss man
  das Skript so schreiben, dass die Funktion als "Bug" gekennzeichnet
  wird

* Wenn du Mühe hast das Shell-Skirpt zu schreiben hat es eine Version
  unter ./workshop/new_constructor.sh

!SLIDE subsection
# Lösung #
## Commits finden mit git-bisct ##

!SLIDE small
## Shell-Skript ##

    #! /bin/sh

    ruby -e "$: << './lib';
    require 'person'
    begin
      Person.new('Hans', 18)
      exit 1
    rescue => e;
      exit 0
    end"

## git-bisect ##

    $ git bisect start 17cb60d 26ab469
    $ git bisect run ./new_constructor.sh

!SLIDE smaller
# Resultat #

    d22592f8cb6a922a930473395895c8d1924ee513 is the first bad commit
    commit d22592f8cb6a922a930473395895c8d1924ee513
    Author: Yves Senn <yves.senn@gmail.com>
    Date:   Sat Oct 8 12:41:59 2011 +0200

        a Person has an age

    :040000 040000 fb38d6e85a33df936c27682ed79d60dbe6a75e1d bd0834dd8849d4c94ea44362f2bbd0cc2a9a585e M	lib
    :040000 040000 80f01cd0cca8e566f88ab863763636439c29bd2c fa2454898a930bf4f0a75c381f0c79efe856ae5f M	spec
    bisect run success

