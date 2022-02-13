clear all;
% P3. Un amplificador óptico (SOA) de ganancia G dB y de factor de ruido NF dB
% emite ruido ASE en ambas polarizaciones. 
% A la salida se coloca un filtro óptico (FO) de polarización en X, con pérdidas de L_F dB. 
% Determina el factor de ruido de la combinación SOA + FO. 
% Respuesta en unidades de [dB].   Error relativo requerido [0,2%]. 
h = 6.626068e-34;
f = 193.1e12; %Hz
G_dB = 21.9; %dB
NF_dB = 8.057; %dB
L_F_dB = 2.008; %dB
G = 10^(G_dB/10);
NF = 10^(NF_dB/10);
L_F = 10^(L_F_dB/10);
S_ASE = ((NF - (1/G))*G*h*f)/(2*L_F);
G_t = G/L_F;
NF_total = (S_ASE/(G_t*h*f)) + (1/G_t);
NF_totaldB = 10*log10(NF_total)
