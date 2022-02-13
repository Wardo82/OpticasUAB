clear all;
%% El ancho de banda de un detector APD es B_e [GHz] 
B_e = 16.800; % [GHz] 
P_o = 6.330; % [μW] Potencia óptica  
R = 0.742; % [A/W] Responsividad del detector
N_th = 11.800; % [pA/√Hz] La densidad de ruido térmico en un ohmio
k_i = 0.408; % Coeficiente de ionización
X_m = 0.592;
M=1000*(1.1-X_m); % Magnificación
q = 1.60217653e-19; % Carga del electrón
% Calcular la relación  señal a ruido-total SNR eléctrica.
% La corriente de oscuridad es despreciable.
% Respuesta en unidades de [dB].   Error relativo requerido [0,2%].  

F_M = k_i*M + ((2 - M^-1)*(1-k_i)); 
SNRe = (M*R*P_o)^2/((N_th^2 + 2*q*M^2*F_M*R*P_o)*B_e);
SNRe_dB = 10*log10(SNRe)
