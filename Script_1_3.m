clc;
clear;
close all

%Test 1
x1 = [0,1,2,3,4;1,3,5,7,9];
[r2,l1] = Linear_Regression(x1);
if abs(r2-1) > 1e-8
    error('Incorrect r^2 valuefor test 1')
end

%Test 2
x2 = [0,1,2,3;1,0,3,2];
[r2_2,l2] = Linear_Regression(x2);

if abs(r2_2-0.36) > 1e-8
    error('Incorrect r^2 value for test 2')
end
