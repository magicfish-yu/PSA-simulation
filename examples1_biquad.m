close all 
clear 
clc
%% biquad antenna and directivity
ant = biquad;  
ant.ArmElevation = 42;
ant.TiltAxis ='Y'; 
ant.ArmLength=0.305;
ant.Width=0.01;
ant.Tilt = 90;

azi =0:180;
ele = -90:90;
freq = 0.5e6;
%%%%%%%%%show the antenna 
figure
show(ant)
%%%%%%%%%%%directivity 
figure
pattern(ant,freq,'azimuth',azi,'elevation',ele,'CoordinateSystem','Rectangular')
title('Directivity-Total[dBi]');
axis([-90 90 0 180]);
grid on
figure
pattern(ant,freq,'azimuth',azi,'CoordinateSystem','Rectangular','polarization','H')
axis([-90 90 0 180]);
figure
pattern(ant,freq,'azimuth',azi,'CoordinateSystem','Rectangular','polarization','V')
axis([-90 90 0 180]);

%%%%%%%%%%%%%P_eta
% figure
% pattern(ant,freq,'azimuth',azi,'CoordinateSystem','Rectangular','polarization','H','Type','powerdb')
% axis([-90 90 0 180]);
% figure
% pattern(ant,freq,'azimuth',azi,'CoordinateSystem','Rectangular','polarization','V','Type','powerdb')
% axis([-90 90 0 180]);
% figure
% pattern(ant,freq,'azimuth',azi,'CoordinateSystem','Rectangular','polarization','RHCP','Type','powerdb')
% axis([-90 90 0 180]);
% figure
% pattern(ant,freq,'azimuth',azi,'CoordinateSystem','Rectangular','polarization','LHCP','Type','powerdb')
% axis([-90 90 0 180]);
