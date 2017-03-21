#! /bin/bash

./run_one_bug.sh -p Math -b 26 -c org.apache.commons.math3.fraction.Fraction
./run_one_bug.sh -p Math -b 27 -c org.apache.commons.math3.fraction.Fraction
./run_one_bug.sh -p Math -b 28 -c org.apache.commons.math3.optimization.linear.SimplexSolver
./run_one_bug.sh -p Math -b 29 -c org.apache.commons.math3.linear.OpenMapRealVector
./run_one_bug.sh -p Math -b 30 -c org.apache.commons.math3.stat.inference.MannWhitneyUTest
