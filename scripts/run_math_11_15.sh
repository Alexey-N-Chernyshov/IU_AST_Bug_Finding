#! /bin/bash

./run_one_bug.sh -p Math -b 11 -c org.apache.commons.math3.distribution.MultivariateNormalDistribution
./run_one_bug.sh -p Math -b 12 -c org.apache.commons.math3.random.BitsStreamGenerator
./run_one_bug.sh -p Math -b 13 -c org.apache.commons.math3.optimization.general.AbstractLeastSquaresOptimizer
./run_one_bug.sh -p Math -b 14 -c org.apache.commons.math3.optim.nonlinear.vector.jacobian.AbstractLeastSquaresOptimizer,org.apache.commons.math3.optim.nonlinear.vector.Weight
./run_one_bug.sh -p Math -b 15 -c org.apache.commons.math3.util.FastMath
