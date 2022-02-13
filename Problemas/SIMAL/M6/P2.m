clear all;
% P2. La densidad de ruido ASE (correspondiente al ruido batido señal-ASE) 
% a la salida de un amplificador óptico es S_ase W/Hz, la ganancia es G dB y la frecuencia es f THz. 
% Calcular la figura de ruido en dB.  
S_ase = 1.427E-17; % [W/Hz] Densidad de ruido ASE
G_dB= 14.780; % [dB]
f = 190.600e12; % [Hz]
% Respuesta en unidades de [dB].   Error relativo requerido [0,2%].   Referencia: \Labs\PRÁCTICA 7.pdf
h = 6.626068e-34;

G = 10^(G_dB/10);
NF = (S_ase/(G*h*f)) + (1/G);
NF_dB = 10*log10(NF)
