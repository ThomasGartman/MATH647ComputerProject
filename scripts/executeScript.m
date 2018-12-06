%executeScript in MATH647ComputerProject
%Version 0.1.0 Last Edited December 6th. 2018
clc;
clear all;

%Create 9.1.Ex1 matrix and plot
f_9_1_Ex1 = @(x) 100; % initial condition
b1_9_1_Ex1 = @(t) 0; %boundary 1
b2_9_1_Ex1 = @(t) 0; %boundary 2
%Problem Data
c_9_1_Ex1 = .5;
tStep_9_1_Ex1 = .01;
tMin_9_1_Ex1 = 0;
tMax_9_1_Ex1 = 1;
xStep_9_1_Ex1 = .1;
xMin_9_1_Ex1 = 0;
xMax_9_1_Ex1 =  1;
xScale_9_1_Ex1 = xMin_9_1_Ex1:xStep_9_1_Ex1:xMax_9_1_Ex1;
tScale_9_1_Ex1 = tMin_9_1_Ex1:tStep_9_1_Ex1:tMax_9_1_Ex1;
tempMatrix_9_1_Ex1 =  FiniteDifference1DHeat(f_9_1_Ex1, b1_9_1_Ex1, b2_9_1_Ex1, c_9_1_Ex1, tStep_9_1_Ex1, tMin_9_1_Ex1, tMax_9_1_Ex1, xStep_9_1_Ex1, xMin_9_1_Ex1, xMax_9_1_Ex1);
FiniteDifference1DGrapher(tempMatrix_9_1_Ex1, xScale_9_1_Ex1, tScale_9_1_Ex1, .01, 'Chapter 9 Section 1 Figure 4: Example 1 Temperature Distribution', 'Length (m)', 'Time (s)', 'Temperature (C)', 'Example1HeatTemperatureDistribution.png')

%Create 9.1.4 matrix and plot
f_9_1_4 = @(x) x*(1-x); % initial condition
b1_9_1_4 = @(t) 0; %boundary 1
b2_9_1_4 = @(t) 0; %boundary 2
%Problem Data
c_9_1_4 = .5;
tStep_9_1_4 = .01;
tMin_9_1_4 = 0;
tMax_9_1_4 = 1;
xStep_9_1_4 = .1;
xMin_9_1_4 = 0;
xMax_9_1_4 =  1;
xScale_9_1_4 = xMin_9_1_4:xStep_9_1_4:xMax_9_1_4;
tScale_9_1_4 = tMin_9_1_4:tStep_9_1_4:tMax_9_1_4;
tempMatrix_9_1_4 =  FiniteDifference1DHeat(f_9_1_4, b1_9_1_4, b2_9_1_4, c_9_1_4, tStep_9_1_4, tMin_9_1_4, tMax_9_1_4, xStep_9_1_4, xMin_9_1_4, xMax_9_1_4);
FiniteDifference1DGrapher(tempMatrix_9_1_4, xScale_9_1_4, tScale_9_1_4, .01, 'Chapter 9 Section 1: Problem 4 Temperature Distribution', 'Length (m)', 'Time (s)', 'Temperature (C)', 'Problem4HeatTemperatureDistribution.png')

%Create 9.1.19 matrix and plot
f_9_1_19 = @(x) 0; % initial condition
b1_9_1_19 = @(t) 60; %boundary 1
b2_9_1_19 = @(t) 20; %boundary 2
%Problem Data
c_9_1_19 = .5;
tStep_9_1_19 = .01;
tMin_9_1_19 = 0;
tMax_9_1_19 = 1;
xStep_9_1_19 = .1;
xMin_9_1_19 = 0;
xMax_9_1_19 =  1;
xScale_9_1_19 = xMin_9_1_19:xStep_9_1_19:xMax_9_1_19;
tScale_9_1_19 = tMin_9_1_19:tStep_9_1_19:tMax_9_1_19;
tempMatrix_9_1_19 =  FiniteDifference1DHeat(f_9_1_19, b1_9_1_19, b2_9_1_19, c_9_1_19, tStep_9_1_19, tMin_9_1_19, tMax_9_1_19, xStep_9_1_19, xMin_9_1_19, xMax_9_1_19);
FiniteDifference1DGrapher(tempMatrix_9_1_19, xScale_9_1_19, tScale_9_1_19, .01, 'Chapter 9 Section 1: Problem 19 Temperature Distribution', 'Length (m)', 'Time (s)', 'Temperature (C)', 'Problem19HeatTemperatureDistribution.png')

%Create 9.1.19 matrix and plot
f_9_1_19 = @(x) 0; % initial condition
b1_9_1_19 = @(t) 60; %boundary 1
b2_9_1_19 = @(t) 20; %boundary 2
%Problem Data
c_9_1_19 = 1.5;
tStep_9_1_19 = .01;
tMin_9_1_19 = 0;
tMax_9_1_19 = 1;
xStep_9_1_19 = .1;
xMin_9_1_19 = 0;
xMax_9_1_19 =  1;
xScale_9_1_19 = xMin_9_1_19:xStep_9_1_19:xMax_9_1_19;
tScale_9_1_19 = tMin_9_1_19:tStep_9_1_19:tMax_9_1_19;
tempMatrix_9_1_19 =  FiniteDifference1DHeat(f_9_1_19, b1_9_1_19, b2_9_1_19, c_9_1_19, tStep_9_1_19, tMin_9_1_19, tMax_9_1_19, xStep_9_1_19, xMin_9_1_19, xMax_9_1_19);
FiniteDifference1DGrapher(tempMatrix_9_1_19, xScale_9_1_19, tScale_9_1_19, .01, 'Chapter 9 Section 1: Problem 19 Unstable Temperature Distribution', 'Length (m)', 'Time (s)', 'Temperature (C)', 'Problem19HeatTemperatureDistributionUnstable.png')

%Create 9.1.19 matrix and plot
f_9_1_19 = @(x) 0; % initial condition
b1_9_1_19 = @(t) 60; %boundary 1
b2_9_1_19 = @(t) 20; %boundary 2
%Problem Data
c_9_1_19 = .2;
tStep_9_1_19 = 10^-2;
tMin_9_1_19 = 0;
tMax_9_1_19 = 1;
xStep_9_1_19 = 10^-2;
xMin_9_1_19 = 0;
xMax_9_1_19 =  1;
xScale_9_1_19 = xMin_9_1_19:xStep_9_1_19:xMax_9_1_19;
tScale_9_1_19 = tMin_9_1_19:tStep_9_1_19:tMax_9_1_19;
tempMatrix_9_1_19 =  FiniteDifference1DHeat(f_9_1_19, b1_9_1_19, b2_9_1_19, c_9_1_19, tStep_9_1_19, tMin_9_1_19, tMax_9_1_19, xStep_9_1_19, xMin_9_1_19, xMax_9_1_19);
FiniteDifference1DGrapher(tempMatrix_9_1_19, xScale_9_1_19, tScale_9_1_19, .01, 'Chapter 9 Section 1: Problem 19 Large Error Temperature Distribution', 'Length (m)', 'Time (s)', 'Temperature (C)', 'Problem19HeatTemperatureDistributionError.png')