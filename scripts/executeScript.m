%executeScript in MATH647ComputerProject
%Version 0.1.0 Last Edited November 11th, 2018
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
