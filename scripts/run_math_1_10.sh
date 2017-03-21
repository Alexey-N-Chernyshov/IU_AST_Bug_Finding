#! /bin/bash

./run_one_bug.sh -p Math -b 1 -c org.apache.commons.math3.fraction.Fraction,org.apache.commons.math3.fraction.BigFraction
./run_one_bug.sh -p Math -b 2 -c org.apache.commons.math3.distribution.HypergeometricDistribution
./run_one_bug.sh -p Math -b 3 -c org.apache.commons.math3.util.MathArrays
./run_one_bug.sh -p Math -b 4 -c org.apache.commons.math3.geometry.euclidean.threed.SubLine,org.apache.commons.math3.geometry.euclidean.twod.SubLine
./run_one_bug.sh -p Math -b 5 -c org.apache.commons.math3.complex.Complex
./run_one_bug.sh -p Math -b 6 -c org.apache.commons.math3.optim.nonlinear.scalar.noderiv.PowellOptimizer,org.apache.commons.math3.optim.nonlinear.scalar.gradient.NonLinearConjugateGradientOptimizer,org.apache.commons.math3.optim.nonlinear.scalar.noderiv.SimplexOptimizer,org.apache.commons.math3.optim.nonlinear.vector.jacobian.GaussNewtonOptimizer,org.apache.commons.math3.optim.nonlinear.scalar.noderiv.CMAESOptimizer,org.apache.commons.math3.optim.BaseOptimizer,org.apache.commons.math3.optim.nonlinear.vector.jacobian.LevenbergMarquardtOptimizer
./run_one_bug.sh -p Math -b 7 -c org.apache.commons.math3.ode.AbstractIntegrator
./run_one_bug.sh -p Math -b 8 -c org.apache.commons.math3.distribution.DiscreteDistribution
./run_one_bug.sh -p Math -b 9 -c org.apache.commons.math3.geometry.euclidean.threed.Line
./run_one_bug.sh -p Math -b 10 -c org.apache.commons.math3.analysis.differentiation.DSCompiler
