#! /bin/bash

./run_one_bug.sh -p Time -b 1 -c org.joda.time.Partial,org.joda.time.field.UnsupportedDurationField
./run_one_bug.sh -p Time -b 2 -c org.joda.time.Partial,org.joda.time.field.UnsupportedDurationField
./run_one_bug.sh -p Time -b 3 -c org.joda.time.MutableDateTime
./run_one_bug.sh -p Time -b 4 -c org.joda.time.Partial
./run_one_bug.sh -p Time -b 5 -c org.joda.time.Period
