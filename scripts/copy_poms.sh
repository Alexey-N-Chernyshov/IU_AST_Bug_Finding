#! /bin/bash

project=''
bug=''

while getopts 'p:b:' flag; do
  case "${flag}" in 
    p) project="${OPTARG}" ;;
    b) bug="${OPTARG}" ;;
    *) echo "Unexpected option ${flag}" 
       exit 1 ;;
  esac
done

if [ "${project}" != "Time" ] && [ "${project}" != "Math" ] ; then
  echo "ERROR: wrong project name -p"
  exit 1
fi

if ! [ "${bug}" -eq "${bug}" ] ; then
  echo "ERROR: wrong bug version -b"
  exit 1
fi

pathfixed="projects/"$project'_'$bug'f'
pathbuggy="projects/"$project'_'$bug'b'

versionfixed=$bug'f'
versionbuggy=$bug'b'

cp poms/"${project}"'_'"${bug}"/pom.xml "${pathfixed}"
cp poms/"${project}"'_'"${bug}"/pom.xml "${pathbuggy}"
