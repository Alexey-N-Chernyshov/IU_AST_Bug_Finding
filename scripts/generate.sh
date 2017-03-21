#! /bin/bash

project=''
bug=''
cuts=''   #classes to be tested
cores='8' #number of cores
iteration=''

while getopts 'p:b:c:i:' flag; do
  case "${flag}" in 
    p) project="${OPTARG}" ;;
    b) bug="${OPTARG}" ;;
    c) cuts="${OPTARG}" ;;
    i) iteration="${OPTARG}" ;;
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

if ! [ "${iteration}" -eq "${iteration}" ] ; then
  echo "ERROR: wrong iteration -i"
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

# remove old tests
rm -rf "${pathfixed}"/src/test/java/org

# compile before testing
mvn -f "${pathfixed}" compile

# generate new test suite
mvn -f "${pathfixed}" evosuite:generate -Dcuts="${cuts}" -Dcores="${cores}"
mvn -f "${pathfixed}" evosuite:export

# save generated test suite
rm -rf tests/"${project}"'_'"${bug}"/"${iteration}"
mkdir -p tests/"${project}"'_'"${bug}"/"${iteration}"
cp -r "${pathfixed}"/src/test/java/org tests/"${project}"'_'"${bug}"/"${iteration}"

# run test and save results
rm -rf test_results/"${project}"_"${bug}"/"${iteration}"
mkdir -p test_results/"${project}"_"${bug}"/"${iteration}"
mvn -f "${pathfixed}" test > test_results/"${project}"_"${bug}"/"${iteration}"/"${project}"_"${bug}"'f.txt'

# test buggy version and save results
rm -rf "${pathbuggy}"/src/test/java/org
cp -r "${pathfixed}"/src/test/java/org "${pathbuggy}"/src/test/java/
mvn -f "${pathbuggy}" test > test_results/"${project}"_"${bug}"/"${iteration}"/"${project}"_"${bug}"'b.txt'

# generate coverage
mvn -f "${pathbuggy}" clean package -Dmaven.test.failure.ignore=true
# copy coverage
rm -rf coverage_reports/"${project}"_"${bug}"/"${iteration}"
mkdir -p coverage_reports/"${project}"_"${bug}"/"${iteration}"
cp -r "${pathbuggy}"/target/site coverage_reports/"${project}"_"${bug}"/"${iteration}"
