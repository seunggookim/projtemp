#!/bin/bash -x
#find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin main \;
for DN in `find . -maxdepth 1 -type d`
do
#	git --git-dir=${DN}/.git --work-tree=${DN} pull origin master
#  sleep 3
#	git --git-dir=${DN}/.git --work-tree=${DN} pull origin main
#  sleep 3
	git --git-dir=${DN}/.git --work-tree=${DN} pull
  sleep 3
done
