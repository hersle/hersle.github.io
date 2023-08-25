Leave SSH command running after disconnecting
=============================================

```
ssh remote-computer
nohup ./long-running-command &
exit
```

Infinite number of email-adresses from one Gmail address
========================================================

Gmail addresses doesn't care about periods,
so emails to herman@gmail.com and h.e.r.m.a.n@gmail.com will arrive to the same recipient's mailbox.
Most sites where you register your email address *does* care, however.
This trick is particularly useful for web stores where you get a one-time promotional code after registering,
without needing to use a 10 min mail thing.

The one Taylor expansion to remember
====================================

$$
(1 + x)^n \simeq 1 + nx
$$

Propagating errors with matrix methods
======================================

[Matrix methods for error propagation](https://veritas.ucd.ie/~apl/labs_master/docs/2020/DA/Matrix-Methods-for-Error-Propagation.pdf)

Git cheat sheet
===============

Three stages of git (like a three-stage rocket):
1. Working area
2. Staging area
3. Commited changes

Initialize repository
---------------------
```
cd folder/to/track/
git init
```

Stage changes
-------------
```
git add         file/to/stage # stage  all changes in file
git add --patch file/to/stage # stage some changes in file
git add folder/to/stage/      # stage folder
git add --patch               # stage some changes in already tracked files
...
```

Unstage changes
---------------
```
git reset                 # unstage all staged changes (leaving working directory
git reset file/to/unstage # unstage all staged changes in file
```

Commit staged changes
---------------------
```
git commit -m "Summary of changes" # new commit
git commit --amend                 # append to previous commit
```

Branches
--------
```
TODO
```

Track, pull from and push to remote repository
----------------------------------------------
```
git remote --verbose                  # list connections between local repo and remote repo
git remote add remote_name remote_url # connect local repo with remote repo

git pull remote_name branch_name      # download and merge changes on       a branch from   a remote repo
git pull remote_name                  # download and merge changes on current branch from   a remote repo
git pull                              # download and merge changes on current branch from the remote repo

git push remote_name branch_name      #   upload           changes on       a branch   to   a remote repo
git push remote_name                  #   upload           changes on current branch   to   a remote repo
git push                              #   upload           changes on current branch   to the remote repo
```
