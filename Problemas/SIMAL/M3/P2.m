clear all;
format long
%Constantes
q=1.60217656535e-19;% carga electrica de un electron
h=6.62607015069e-34; % constante de plank
c= 299792458; % velocidad luz en m/s

%Variabl
V= 1.79e-14; %m^3
lambda=820.0e-9; %m
A=; % 1/s
B=; % m^3/s
C=; % m^6/s
I_dc=; %A

%PAS0 1
X=(sqrt((A^3/(27*C^3))-(((A^2)*(B^2))/(108*C^4))+(I_dc^2/(4*C^2*V^2*q^2))-((B^3*I_dc)/(27*C^4*V*q))+((A*B*I_dc)/(6*C^3*V*q)))-(B^3/(27*C^3))+((A*B)/(6*C^2))+(I_dc/(2*C*V*q)))^(1/3);
%PAS0 2
n=(((B^2/(9*C^2))-(A/(3*C)))/X)+X-(B/(3*C));
%PASO 3
R=A*n+B*n^2+C*n^3;
eficiency=((B*n)/(A+n*B+n^2*C));
%PAS04
Pout=abs(R*eficiency*h*(c/lambda)*V)
Pout_mW=Pout*1000
