%% Un diodo LÁSER tiene los siguientes parámetros: 
tau_c = 3.144e-9; % [s] Tiempo de vida de los portadores.
n_o = 7.480E+23; %[1/m^3] Densidad de portadores en transparencia.
n_g = 3.514; % Indice de refracción de grupo
alpha_i = 944.6; % [m^-1] Perdidas internas de la zona activa
R_e = 0.303; % Reflectividad de ambos espejos
c = 299792458; % Velocidad de la luz
q = 1.60217653e-19; % Carga del electron 
h = 6.626068e-34; % Constante de Plank
sigma_g = 2.25e-20; % [m^2] Coeficiente de ganancia lineal (sección cruzada)
% Dimensiones de la zona activa de láser
L = 233e-6;
ancho = 1.33e-6; 
grosor = 0.33e-6; 
V_act = L*grosor*ancho; % Volumen de la zona activa

%% Calcular la frecuencia de relajación del LASER en GHz si la frecuencia de emisión es 193.6THz y la corriente de polarización es I_p mA.
f = 193.6e+12; % [Hz] % Frecuencia de emisión
I_p = 48.64e-3; %  [A] Corriente de polarización

% Respuesta en unidades de [GHz]. Error relativo requerido [0,1%].
v_g = c/n_g; % Calculamos la velocidad de grupo
alpha_m = (log(1/(R_e^2))/(2*L));
tau_ph = 1/(v_g*(alpha_i+alpha_m)); 
G_N= (sigma_g*v_g)/V_act; 
I_th = (q/tau_c)*(V_act*n_o + (1/(tau_ph*G_N))); 
w_o = sqrt((G_N*(I_p-I_th))/q); 
f_o = w_o/(2*pi); 
f_o_Ghz = f_o*10^-9 %[GHz]
