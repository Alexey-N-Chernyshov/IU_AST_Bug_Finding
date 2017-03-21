#! /bin/bash

mkdir report
cp -r poms report/poms
mv bugs report/bugs
mv tests report/tests
mv coverage_reports report/coverage_reports
mv test_results report/test_results

zip -r report.zip report/
