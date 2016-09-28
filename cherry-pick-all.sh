#!/bin/sh

commitid=$1

branches=""
for b in $branches
do
    echo "==== $b ===="
    git checkout $b
    git cherry-pick -x $commitid
    git push origin $b
done
git checkout 07-zero-downtime-push
