#! /bin/bash

project=''
bug=''
cuts=''

while getopts 'p:b:c:' flag; do
  case "${flag}" in 
    p) project="${OPTARG}" ;;
    b) bug="${OPTARG}" ;;
    c) cuts="${OPTARG}" ;;
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

./checkout.sh -p "${project}" -b "${bug}"
./copy_poms.sh -p "${project}" -b "${bug}"
for i in $(seq 1 10);
do
  ./generate.sh -p "${project}" -b "${bug}" -c "${cuts}" -i "${i}"
done
