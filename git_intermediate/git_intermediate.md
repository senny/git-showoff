!SLIDE

# Intermediate Git #

!SLIDE commandline
# Ignoring Files #

* Datei mit dem Namen ".gitignore" hinzufügen
* mehrere ".gitignore" Datein in Unterordner möglich
* "Shell Glob Patterns" können verwendet werden z.B. "*.log"

!SLIDE
# .gitignore #

    config/database.yml
    config/*.sphinx.conf
    *.cache
    *.log
    *.pid
    tmp/**/*
    .DS_Store
    doc/*.dot
    coverage/*
    db/*.sqlite3

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
# FF-Merge #
![git_intermediate](rebase-3.png)

!SLIDE smaller
# Rebase | Merge #

* NICHT rebasen mit veröffentlichten Commits
* NICHT rebasen bei grossen Branches
* Merge ist in der History sichtbar (wenn nicht FF)
* Rebase ist nicht sichtbar, simuliert lineare History