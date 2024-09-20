#!/bin/bash -x
#find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin main \;
HERE=$(pwd)
for DN in `find ${HERE}/ -maxdepth 1 -type d`
do
#  if [[ uname -eq "Linux" ]]; then
#    git --git-dir=${DN}/.git --work-tree=${DN} pull origin master
#    sleep 3
#    git --git-dir=${DN}/.git --work-tree=${DN} pull origin main
#    sleep 3
#  else
#    git --git-dir=${DN}/.git --work-tree=${DN} pull
  if [ -d ${DN}/.git ]
  then
    cd ${DN}
    git pull
    sleep 3
  fi
done
cd ${HERE}

