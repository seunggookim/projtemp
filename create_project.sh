#!/bin/bash

if [ ! `which gh` ]
then
    echo "INSTALL github-cli: https://github.com/cli/cli/blob/trunk/docs/install_linux.md"
    exit
fi

ProjName=${1}
#Dnames="code data docs figs meta"
#for Dname_ in ${Dnames}; do
#    mkdir -p ${ProjName}/${Dname_}
#done
gh repo create ${ProjName} --template projtemp --private
gh repo clone ${ProjName}
cd ${ProjName}
echo "# ${ProjName}" > README.md
rm create_project.sh
git add .
git commit -m "Initial commit"
git push
