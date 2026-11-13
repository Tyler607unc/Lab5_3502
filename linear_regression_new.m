function [parameters, rsquared] = linear_regression(X, Y)
%% linear_regression - Returns parameters of a fitted line to given data and
% the $r^2$ error of the fitted line
% Inputs
%
% X - independent data
% Y - dependent data
%
% Outputs
%
% parameters - value of $a_0$ and $a_1$ for the line [$a_0$, $a_1$]
% rsquared - The value of the $r^2$ error

%Number of data points
DataNum= numel(X);

a1=(DataNumsum(X.Y)-sum(X)sum(Y)) / (DataNumsum(X.^2)-(sum(X))^2);
a0= (sum(Y)-a1sum(X)) / DataNum;
%Vector of predicted Y points
PredictedY=Xa1+a0;

MeanY=(1/DataNum)sum(Y);
Sr=sum((PredictedY-Y).^2);
St=sum((Y-MeanY).^2);
rsquared=(St-Sr)/St;
parameters= [a0, a1];
end
