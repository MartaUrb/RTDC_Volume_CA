clear all

%% same volume - different cross section
 
%let's assume a volume of 1200 um3
 
V = 1200
 
%% for a sphere
 
% Volume of a sphere = 4./3*pi*r^3 
% therefore raius can be calculated as follows: 
 
r_sp = (V./(4/3*pi))^(1/3)
 
CA_sp = pi*r_sp^2
 
 
%% for spheroid
% where cross section is a circle of radius a  
% and the longitudinal section (our cross section area) is an ellipse 
% with minor axis dimension a and major axis c
 
% Volume of such an spheroid = 4./3*pi*a^2*c 
% let's assume c = 1.5*a
% then V =  4./3*pi*a^2*1.5*a = 2*pi*a^3
 
a = (V./(2*pi))^(1/3)
c = 1.5*a

%then CA = pi*a*c = 1.5*pi*a^2
CA_sd = 1.5*pi*a^2
 
%% for bullet 
% composed of half sphere with radius a1 
% and a cyllinder with height equalt
% to b1=2a1 and cross section radius equal to a1

% Volume of our bullet is half a sphere volume plus volume of the cyllinder
% V = 0.5*4/3*pi*a1^3 + pi*a1^2*b1 
% V = 2/3*pi*a1^3 + pi*a1^2*2a1 
% V = (2/3*pi+2*pi)*a1^3 
% V = 8/3*pi*a1^3 

a1 = (V./(8/3*pi))^(1/3)
b1 = 2*a1

% cross section is 1/2 circle + square:
%CA = 0.5*pi*a1^2+b1^2
%CA = 0.5*pi*a1^2+4*a1^2
%CA = (0.5*pi+4)a1^2
 
CA_bul = (0.5*pi+4)*a1^2
