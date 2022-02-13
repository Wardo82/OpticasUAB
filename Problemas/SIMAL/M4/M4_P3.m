% La zona activa de un LASER mide 220 μm de longitud, 1.3 μm de ancho y 0.3 μm de grosor.
tau_c = 2.103e-9; %s
n_o = 1.498E+24; %1/m^3
n_g = 4; 
alpha_i = 1.870E+3; %m^-1
R_e = 0.3; 
c = 299792458; % Velocidad de la luz
q = 1.60217653e-19; % Carga del electron 
h = 6.626068e-34; % Constante de Plank
sigma_g = 3.33e-20; % [m^2] Coeficiente de ganancia lineal (sección cruzada)
% Dimensiones de la zona activa de láser
L = 220e-6; 
ancho = 1.3e-6; 
grosor = 0.3e-6; 
V_act = L*grosor*ancho; % Volumen de la zona activa

% Si el acoplo óptico al exterior del dispositivo es ideal, calcular la 
% potencia emitida por UNA de las facetas del LASER a la frecuencia de 192,3THz 
% si la corriente de polarización es I_p mA. Suponer que el factor de 
% confinamiento es unidad. 
f = 192.3e+12; % [Hz] % Frecuencia de emisión
I_p = 15.58e-3; % [A] Corriente de polarización

% Respuesta en unidades de [mW]. Error relativo requerido [0,1%].
v_g = c/n_g; % Calculamos la velocidad de grupo
alpha_m = (log(1/(R_e^2))/(2*L));
tau_ph = 1/(v_g*(alpha_i+alpha_m)); 
G_N= (sigma_g*v_g)/V_act; 
I_th = (q/tau_c)*(V_act*n_o + (1/(tau_ph*G_N))); 
Potencia = (h*(I_p-I_th)*f*alpha_m)/(2*q*(alpha_m+alpha_i)); 
Potencia_mW = Potencia*10^3