clc;
clear;
close all

load("lab5_nist_vtec.mat");
el_deg = (10:1:90);
nist_vtec = nist_vtec.vtec;
vtec = nist_vtec(14:2:18,1);
%% a) Compute K (with f1 in Hz) and check that it is about 0.16 m per TECU
f1 = 1575.42e6; %(Hz)
K = 40.3e16 / f1^2; % ionospheric delay coefficient in m per TECU
disp(K)

%% b) Write a function I = iono_delay(el_deg, vtec) that returns the delay in meters

I = iono_delay(el_deg,vtec);

%% c) Using the VTEC from your fit, calculate and plot the ionospheric delay (in meters) against elevation angle (from 10◦to 90◦) at the start, middle, and end of the window. The plot should have 3 lines, one for each time: 14:00, 16:00, and 18:00 UTC.

plot(el_deg,I(1,:),'b-')
hold on 
plot(el_deg,I(2,:),'r-')
hold on
plot(el_deg,I(3,:),'g-')
legend('UTC 14:00','UTC 16:00','UTC 18:00')
xlabel('Elevation Angle [degrees]')
ylabel('Ionospheric Delay [m]')
