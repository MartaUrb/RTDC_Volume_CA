clear all

%% same cross section can lead to different volumes 
 
%let's assume a cross section area of 150 um2
 
CA = 150
 
%% for a sphere
 
%CA = pi*r^2
% therefore raius can be calculated as follows: 
 
r_sp = sqrt(CA./pi)
 
% Volume of a sphere = 4./3*pi*r^3 = 1382 um3
 
V_sp = 4./3*pi*r_sp^3
 
 
%% for spheroid
% where cross section is a circle of radius a  
% and the longitudinal section (our cross section area) is an ellipse 
% with minor axis dimension a and major axis c
 
% CA = pi*a*c
% let's assume c = 1.5*a
% then CA = 1.5*pi*a2 
 
a = sqrt(CA./(1.5*pi))
c = 1.5*a
 
% Volume of such an spheroid = 4./3*pi*a^2*c = 1128.4 um3
V_sd = 4./3*pi*a^2*c
 
 
%% for bullet 
% composed of half sphere with radius a1 
% and a cyllinder with height equalt
% to b1=2a1 and cross section radius equal to a1
 
% cross section is 1/2 circle + square:
%CA = 0.5*pi*a1^2+b1^2
%CA = 0.5*pi*a1^2+4*a1^2
%CA = (0.5*pi+4)a1^2
 
a1 = sqrt(CA./(0.5*pi+4))
b1 = 2*a1
 
% Volume of our bullet = 0.5*4./3*pi*a1^3 + pi*a1^2*b1 = 1170.5 um3
 
V_bul = 0.5*4./3*pi*a1^3 + pi*a1^2*b1
