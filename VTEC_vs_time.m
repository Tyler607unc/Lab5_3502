%% 1.1
% Plot vtec against t_hr for the full day. 
% Mark the fitting window by plotting vertical lines at 14 and 18 hr UTC (8-12 hr Local time)

load("lab5_nist_vtec.mat");

plot(nist_vtec.t_hr, nist_vtec.vtec);
xline(14, '--r', '14 UTC');
xline(18, '--r', '18 UTC');
xlabel('Time (hr UTC)');
ylabel('VTEC');
grid on;
title('VTEC vs. Time (over a full day)');
subtitle("Fitting Window: 14-18 UTC");