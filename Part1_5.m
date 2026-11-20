clc
clear


x = readmatrix('lab5_nist_vtec.csv');
[parameters r2] = linear_regression(x(:,1),x(:,2));

% a0 = 3.0161
% a1 = 1.2755


vtec = parameters(2)*x(:,1)+parameters(1);

plot(x(:,1),vtec)
hold on
scatter(x(:,1),x(:,2))




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
DataNum = numel(X);

a1=(DataNum*sum(X.*Y)-sum(X)*sum(Y)) / (DataNum*sum(X.^2)-(sum(X))^2);
a0= (sum(Y)-a1*sum(X)) / DataNum;
%Vector of predicted Y points
PredictedY=X*a1+a0;

MeanY=(1/DataNum)*sum(Y);
Sr=sum((PredictedY-Y).^2);
St=sum((Y-MeanY).^2);
rsquared=(St-Sr)/St;
parameters= [a0, a1];
end

