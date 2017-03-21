#! /bin/bash

./run_one_bug.sh -p Time -b 21 -c org.joda.time.tz.DefaultNameProvider
./run_one_bug.sh -p Time -b 22 -c org.joda.time.base.BasePeriod
./run_one_bug.sh -p Time -b 23 -c org.joda.time.DateTimeZone
./run_one_bug.sh -p Time -b 24 -c org.joda.time.format.DateTimeParserBucket
./run_one_bug.sh -p Time -b 25 -c org.joda.time.DateTimeZone
./run_one_bug.sh -p Time -b 26 -c org.joda.time.chrono.ZonedChronology
./run_one_bug.sh -p Time -b 27 -c org.joda.time.format.PeriodFormatterBuilder
