function [I] = iono_delay(el_deg, vtec)
%Function outputs the ionoshpere delay in meters given the elevation angle
%and vertical TEC
%
%Input: el_deg the elevation angle in degrees, vtec the vertical total
%electron content in TEC
%
%Output: I the ionosphere delay in meters

%Constants
f1 = 1575.42e6; %[Hz]
Re = 6371000; %[m]
h = 350000; %[m]

%Finding K
K = 40.3e16 / f1^2;

%Finding F(el)

denominator_F = sqrt(1-((Re .* cos(el_deg))./(Re+h)).^2);
F_el = 1./denominator_F;

%Find I

I = K * F_el .* vtec;

