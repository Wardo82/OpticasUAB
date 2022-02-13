clear all;
%% Un detector PIN con
Po_dBm = -22.680; % [dBm] potencia óptica
R = 0.576; % [A/W] Responsividad
% Produce una relación señal a ruido eléctrica de SNR_e 
SNRe_dB = 17.680; % [dB]
% Sobre un ancho de banda de sistema  B_e [GHz]
B_e = 3.514e9; % [GHz]
% Calcular la densidad espectral de ruido térmico en un ohmio. 
% Respuesta en unidades de [pA/√Hz].   Error relativo requerido [0,1%]. 
q = 1.60217653e-19; % Carga del electrón

Po = 10^((Po_dBm-30)/10); 
SNRe = 10^(SNRe_dB/10);
N_th = sqrt(((Po*R)^2/(SNRe*B_e))-2*q*(Po*R));
N_th_pA = N_th*1e12
