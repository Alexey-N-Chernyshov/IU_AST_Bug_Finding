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

mkdir -p projects/
mkdir -p tests/
mkdir -p coverage_reports/
mkdir -p test_results/
mkdir -p poms/
mkdir -p bugs/

defects4j checkout -p "${project}" -v "${versionfixed}" -w "${pathfixed}"
defects4j checkout -p "${project}" -v "${versionbuggy}" -w "${pathbuggy}"

defects4j info -p "${project}" -b "${bug}" > bugs/"${project}"'_'"${bug}"'.txt'
defects4j info -p "${project}" -b "${bug}"
echo "INFO: Remember modified classes"
echo "next step is to modify pom.xml"
echo "and don't forget to save it!"
