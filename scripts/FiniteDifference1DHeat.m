%FiniteDifference1DHeat in MATH647ComputerProject
%Version 0.1.0 Last Edited December 6th. 2018
%
%Takes in a 1D heat equation for an insulated bar with an initial 
%temperature distribution and nonhomogeneous boundary data and uses the
%Finite Difference Method to numerically solve for its temperature
%distribution.
%
%Arguments:
%
%Preconditions:
%
%Postconditions:

function [temperatureMatrix] = FiniteDifference1DHeat(initFunc, boundX0, boundXL, const, tStep, tMin, tMax, xStep, xMin, xMax)
%initialize temperatureMatrix
numZerosT = fix((tMax-tMin)/tStep);
numZerosX = fix((xMax - xMin)/xStep + 1);
temperatureMatrix = zeros(numZerosT,numZerosX);

    s = (const^2 * tStep)/xStep^2;
    %Set up initial conditions
    for k = 1:((xMax-xMin)/xStep +1)
        temperatureMatrix(1, k) = initFunc(k);
    end
    
    %Set up boundary conditions
    for m = 2:(tMax-tMin)/tStep
        temperatureMatrix(m, 1) = boundX0(m);
        temperatureMatrix(m, (xMax - xMin)/xStep) = boundXL(m);
    end
    
    %Set up remaining matrix values
    for i = 1:((tMax-tMin)/tStep)
        for j = 2:(xMax-xMin)/xStep 
            temperatureMatrix(i+1,j) = (1 - 2*s)*temperatureMatrix(i,j) + s*(temperatureMatrix(i,j+1) + temperatureMatrix(i, j-1));
        end
    end

end