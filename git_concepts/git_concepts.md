!SLIDE
# Git Concepts and internals #

!SLIDE
## Architecture ##

!SLIDE
## Plumbing and Porcelain
![plumbing_and_porcelain](plumbing_porcelain.png)

!SLIDE
![plumbing_and_porcelain_commands](plumbing_porcelain_2_.png)

!SLIDE code
log HEAD^^ ist eine Kombination aus rev-parse + log

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
## centralized VCSs use sequential revision numbers ##


!SLIDE center
![git_object_model](git_object_model.png)


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


!SLIDE
# Treeish #

!SLIDE
# SHA-1 Hash #

    b645be7a5d01cb5e143fcd2c0581a4dc69c595b9

!SLIDE
# Partial SHA-1 #

    b645be7a5d01cb5e143fcd2c0581a4dc69c595b9
    b645be7a5d01cb5e1
    b645be7a5d
    b645be7

!SLIDE
# Branch, Remote or Tag Name #

    origin/master
    refs/remotes/origin/master
    master
    refs/heads/master
    v1.0
    refs/tags/v1.0

!SLIDE
# Carrot Parent #

    master^
    master^2
    master^3

!SLIDE
# Tilde Spec #

    master~2
    master~3
    master~7

!SLIDE
# Date Spec (Lokal) #

    master@{yesterday}
    master@{1 month ago}

!SLIDE
# Ordinal Spec (Lokal) #

    master@{1}
    master@{5}

!SLIDE
# Blob Spec #

    <treeish>:<path>

    master:/path/to/file
    my_feature:/app/models/person.rb
    release/1.0:/spec/models/person_spec.rb

!SLIDE
# Range #

    <treeish>..<treeish>

    7b593b5..51bea1
    master..my_feature

