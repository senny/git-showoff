!SLIDE

# Git Concepts #

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
