#!/bin/bash

if [ ! `which gh` ]
then
    echo "INSTALL github-cli: https://github.com/cli/cli/blob/trunk/docs/install_linux.md"
    exit
fi

ProjName=${1}
gh repo create ${ProjName} --template projtemp --private
gh repo clone ${ProjName}
cd ${ProjName}
cat << EOF > README.md
# ${ProjName}\

## directory structure

### On respo (synchronized)
`./code`  for functions, scripts, small (<10 MB) packages for each language

`./docs`  for documents (notes, presentation slides, manuscripts, other human-readable files)

`./figs`  to dump figure files in

`./meta`  for small (<10 MB) meta-data files

### On local (not synchronized)
`./data`  for large (>10 MB) files. The folder name "data" is set NOT TO SYNCHRONIZED (see `.gitignore`)
EOF
rm create_project.sh
git add .
git commit -m "Initial commit"
git push
