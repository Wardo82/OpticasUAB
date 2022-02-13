clear all;
% Un amplificador óptico (SOA) tiene una longitud de L μm, un ancho de 3 μm 
% y un grosor de 50 nm.
% La corriente de polarización es 150 mA y la frecuencia óptica es 193,1 THz.
% El factor de confinamiento es Г, la sección cruzada σ_g, el coeficiente de 
% las pérdidas internas es α_s 
% Calcular la potencia óptica de salida del amplificador. 
% Respuesta en unidades de [dBm].  Error relativo requerido [0,2%]. 
n_o = 1.44e24; % [m^-3] Densidad de portadores en transparencia
n = 7.815E+24; % [m^-3] Densidad de portadores
sigma_g = 2.948E-20; % [m^2] Seccion cruzada
alpha_s = 3.958E+3; % [1/m] Coeficiente de las pérdidas internas
T = 0.163; % Factor de confinamiento
L = 308e-6; %m
Pe_dBm = -32.820; % [dBm] Potencia óptica de entrada

Pe = 10^((Pe_dBm - 30)/10); %W
g_n = sigma_g*(n - n_o); 
g_t_n = T*g_n - alpha_s; 
G_n_L = exp(g_t_n*L); 
G_n_L_dB = 10*log10(G_n_L); 
Po_dBm = Pe_dBm + G_n_L_dB  %potencia de salida