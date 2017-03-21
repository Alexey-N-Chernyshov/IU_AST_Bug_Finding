#! /bin/bash

./run_one_bug.sh -p Time -b 6 -c org.joda.time.chrono.GJChronology
./run_one_bug.sh -p Time -b 7 -c org.joda.time.format.DateTimeFormatter
./run_one_bug.sh -p Time -b 8 -c org.joda.time.DateTimeZone
./run_one_bug.sh -p Time -b 9 -c org.joda.time.DateTimeZone
./run_one_bug.sh -p Time -b 10 -c org.joda.time.base.BaseSingleFieldPeriod
