%% Un LÁSER tiene las siguientes características:
tau_c = 2.996e-9; % [s] Tiempo de vida de los portadores.
n_o = 1.340E+24; %[1/m^3] Densidad de portadores en transparencia.
n_g = 4; % Indice de refacción de grupo
alpha_i = 1.905E+3; % [m^-1] Pérdidas internas de la zona activa.
R_e = 0.295; % Reflectividad de ambos espejos
c = 299792458; % Velocidad de la luz
q = 1.60217653e-19; % Carga del electron 
h = 6.626068e-34; % Constante de Plank
sigma_g = 3.5e-20; % [m^2] Coeficiente de ganancia lineal (sección cruzada)
% Dimensiones de la zona activa de láser
L = 250e-6; 
ancho = 3.5e-6; 
grosor = 0.32e-6; 
V_act = L*grosor*ancho; % Volumen de la zona activa

% La densidad de portadores en transparencia es n_o m^-3 y el tiempo de vida
% de los mismos es τ_c ns. 
% Calcular la corriente umbral del LASER en mA si la frecuencia de emisión
f = 193.6e+12; % [Hz] % Frecuencia de emisión
I_p = 60e-3; % [A] Corriente de polarización

% Respuesta en unidades de [mA]. Error relativo requerido [0.1%].    
v_g = c/n_g; % Calculamos la velocidad de grupo
alpha_m = (log(1/(R_e^2))/(2*L));
tau_ph = 1/(v_g*(alpha_i+alpha_m)); 
G_N= (sigma_g*v_g)/V_act; 
I_th = (q/tau_c)*(V_act*n_o + (1/(tau_ph*G_N))); 
I_th_mA = I_th*10^3
