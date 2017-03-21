#! /bin/bash

./run_one_bug.sh -p Time -b 11 -c org.joda.time.tz.ZoneInfoCompiler
./run_one_bug.sh -p Time -b 12 -c org.joda.time.LocalDate,org.joda.time.LocalDateTime
./run_one_bug.sh -p Time -b 13 -c org.joda.time.format.PeriodFormatterBuilder
./run_one_bug.sh -p Time -b 14 -c org.joda.time.chrono.BasicMonthOfYearDateTimeField
./run_one_bug.sh -p Time -b 15 -c org.joda.time.field.FieldUtils
./run_one_bug.sh -p Time -b 16 -c org.joda.time.format.DateTimeFormatter
./run_one_bug.sh -p Time -b 17 -c org.joda.time.DateTimeZone
./run_one_bug.sh -p Time -b 18 -c org.joda.time.chrono.GJChronology
./run_one_bug.sh -p Time -b 19 -c org.joda.time.DateTimeZone
./run_one_bug.sh -p Time -b 20 -c org.joda.time.format.DateTimeFormatterBuilder
