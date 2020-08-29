The exputil problem instances
Shabbir Ahmed (sahmed@isye.gatech.edu)
06/17/2013

This directory consists of 6 instances of an expected utility knapsack
Instances generated as described in the paper: 

Shabbir Ahmed and Alper Atamturk. Maximizing a class of submodular utility functions. 
Mathematical Programming, 128(1-2):149–169, 2011.

Formulation:
------------
m = scenarios
n = variables
L = risk coeff


min sum_(i=1 to m) pi_i ( -1 + exp((1/L)*(sum_j -1*v_ij x_j)))
s.t. sum_(j=1 to n) a_j x_j <= 1, x_j in {0,1}

Data generation:
----------------
L = 4
pi_i = 1/m
a_j = Uniform(0,0.2)
v_ij = r_ij*a_j
where
ln r_ij = alpha_j + beta_j*lnf_i + e_ij
and
alpha_j = Uniform(0.05,0.10)
beta_j = Uniform(0,1)
lnf_i = Normal(0.05,0.0025)
e_ij = Normal(0,0.0025)


Instances and optimal values:
-----------------------------
The instances are named as exputil_n_m with n being the number of variables and m the number of scenarios.

------------------------------
Instance	 Optimal value
------------------------------
exputil_25_100	 -0.242304 
exputil_25_500	 -0.246211 
exputil_25_1000	 -0.242750 
exputil_50_100	 -0.246343 
exputil_50_500	 -0.247751 
exputil_50_1000	 -0.247643
exputil_100_100	 -0.247542
exputil_100_500	 -0.248989
exputil_100_1000 -0.249317
------------------------------

The data files:
---------------
The data file for each instances (with a .dat extension) is formatted as follows:
The first line has m and n
The next n lines list a_j
The next m*n lines list v_ij

