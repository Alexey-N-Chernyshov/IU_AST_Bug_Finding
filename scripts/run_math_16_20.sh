#! /bin/bash

./run_one_bug.sh -p Math -b 16 -c org.apache.commons.math3.util.FastMath
./run_one_bug.sh -p Math -b 17 -c org.apache.commons.math3.dfp.Dfp
./run_one_bug.sh -p Math -b 18 -c org.apache.commons.math3.optimization.direct.CMAESOptimizer
./run_one_bug.sh -p Math -b 19 -c org.apache.commons.math3.optimization.direct.CMAESOptimizer
./run_one_bug.sh -p Math -b 20 -c org.apache.commons.math3.optimization.direct.CMAESOptimizer
