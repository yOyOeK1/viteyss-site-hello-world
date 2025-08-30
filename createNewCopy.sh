#!/bin/bash

echo "Create new copy of viteyss-site- ..."


# $1 - default
# $2 - query
function mkQuery(){
    #echo "mkQuery"
    defRes=$1
    if [[ -n $1 ]]; then
        read -p "$2 [$1] : " "res"
    else
        read -p "$2 : " "res"
    fi

    if [[ -n $res ]]; then
        #echo "not empty"
        a=1
    else
        res=$defRes
    fi

    #echo "$tRet"
    #return "$tRet"
}

# $1 - pathToCount items in
function countFilesIn(){
    res=`ls "$1" | wc | awk '{print $1}'`
}



countFilesIn "$PWD"
if (( $res == 0 )); then
    #echo "[OK] directory empyty"
    res=''
else
    echo "Chk ... Files / directories in current path .... in: $res"
    echo "[E] You have files / directories in current path not good"
    exit 2
fi

## chk not nice if git is installed
res=`git --version`
exitRes=$?


pName=`basename $PWD`
mkQuery "$pName" "Set project / site name"
pName=$res

mkQuery "" "Description"
pDesc=$res

mkQuery "0.0.1" "Version"
pVer=$res

echo "Project / site name [$pName]"
echo -e "desc: \n$pDesc\n\nVer: $pVer"


mkQuery "y" "Write it to files ...[y/n] "
echo "write:$res"
if [[ $res != 'y' ]];then
    echo "not Yes exit 3"
    exit 3
fi

echo "Installing copy ..."
echo "- pwd:$PWD"

git clone "https://github.com/yOyOeK1/viteyss-site-hello-world.git"
