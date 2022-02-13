clear all;
%% Suponiendo que la corriente de oscuridad es despreciable, 
% encontrar la Potencia  Equivalente (NEP) de Ruido en un receptor PIN si 
% el ruido térmico equivalente es N_th, el ancho de banda eléctrico es Be 
% y la respuesta del PIN es R.
Be = 2.697e9; % [Hz]
R = 0.782; % [A/W]
N_th = 19.400; % [pA/√Hz].
% Respuesta en unidades de [dBm].   Error relativo requerido [0,1%]. 
NEP = sqrt(N_th^2*Be)/R;
NEP_dBm = 10*log10(NEP)+30
