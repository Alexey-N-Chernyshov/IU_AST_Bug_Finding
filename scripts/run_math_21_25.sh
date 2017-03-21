#! /bin/bash

./run_one_bug.sh -p Math -b 21 -c org.apache.commons.math3.linear.RectangularCholeskyDecomposition
./run_one_bug.sh -p Math -b 22 -c org.apache.commons.math3.distribution.UniformRealDistribution,org.apache.commons.math3.distribution.FDistribution
./run_one_bug.sh -p Math -b 23 -c org.apache.commons.math3.optimization.univariate.BrentOptimizer
./run_one_bug.sh -p Math -b 24 -c org.apache.commons.math3.optimization.univariate.BrentOptimizer
./run_one_bug.sh -p Math -b 25 -c org.apache.commons.math3.optimization.fitting.HarmonicFitter
