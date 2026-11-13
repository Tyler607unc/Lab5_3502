
%% Linear regression Function

function [r2 l] = Linear_Regression(x)
% Input is the data set x with both the x and y values 
% Funxtion will output a set of numbers used for a line over the window 
% The function will also output an arbitrary function for the best fit line
% Team 3
n = length(x(1,:));
xy = zeros(1,n);
    for i = 1:n
        xy(i) = x(1,i)*x(2,i); % sum xy
    end
    sumxy = sum(xy);
    sumx = sum(x(1,:));
    sumy = sum(x(2,:));
    sumx2 = sum(x(1,:).^2); % Sum of X squared


    a1 = (n*sumxy-sumx*sumy)/(n*sumx2-sumx^2);
    a0 = (sumy-a1*sumx)/n;
    yfit = a1.*x(1,:)+a0;
    
    l = [x(1,:); yfit]; % Array of best fit line
   
    
    % R^2 calculation
    ybar = sumy/n;


        sr = zeros(1,n);
        st = zeros(1,n);
    for k = 1:n
        sr(k) = (x(2,k)-yfit(k)).^2;
        st(k) = (x(2,k)-ybar).^2;
    end
    St = sum(st);
    Sr = sum(sr);
    r2 = (St-Sr)/St;
end

x = rand(2,10);
[r2 l] = Linear_Regression(x);

scatter(x(1,:),x(2,:))
hold on
plot(l(1,:),l(2,:))


