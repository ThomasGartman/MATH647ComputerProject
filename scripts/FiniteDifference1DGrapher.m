%FiniteDifference1DGrapher in MATH647ComputerProject
%Version 0.1.0 Last Edited November 11th, 2018
%
%Takes in a solution matrix generated from applying the Finite Difference 
%Method and saves a surface plot + certain (u,x) plots
%
%Arguments:
%
%Preconditions:
%
%Postconditions:
function[] = FiniteDifference1DGrapher(dataMatrix, xscale, tscale, tStep, figTitle, xtitle, ttitle, utitle, fileName)
    surf(xscale, tscale, dataMatrix);
    axis tight;
    colormap(jet);
    title(figTitle);
    xlabel(xtitle);
    ylabel(ttitle);
    zlabel(utitle);
    view(130,45);
    saveas(gcf, fileName);
    movefile(fileName, 'images');
end