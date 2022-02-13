%Problema 3
format long

%Constantes
q= 1.602176565*10^(-19);

%Variables
V= 6.10*10^(-15);
A= ;
B= ;
C= ;
lambda= 820*10^(-9);
I_dc= ;
Ip = ;

%Paso 1

I2= I_dc + Ip;     %  I_dc + Ip.

%Paso 2
F1=(A^3)/(27*C^3);
F2= (A^2*B^2)/(108*C^4);
F3= I_dc/(4*C^2*V^2*q^2);
F4= (B^3*I_dc)/(27*C^4*V*q);
F5= (A*B*I_dc)/(6*C^3*V*q);
F6= B^3/(27*C^3);
F7= (A*B)/(6*C^2);
F8= I_dc/(2*C*V*q);
X1=(sqrt(F1-F2+F3-F4+F5)-F6+F7+F8)^(1/3);

%Paso 3
n1=(B^2/(9*C^2)-A/(3*C))/X1;
n_1=n1+X1-B/(3*C);

%Paso 4
F1=(A^3)/(27*C^3);
F2= (A^2*B^2)/(108*C^4);
F3= I2^2/(4*C^2*V^2*q^2);
F4= (B^3*I2)/(27*C^4*V*q);
F5= (A*B*I2)/(6*C^3*V*q);
F6= B^3/(27*C^3);
F7= (A*B)/(6*C^2);
F8= I2/(2*C*V*q);
X2=(sqrt(F1-F2+F3-F4+F5)-F6+F7+F8)^(1/3);

%Paso 5
n2=(B^2/(9*C^2)-A/(3*C))/X2;
n_2=n2+X2-B/(3*C);

%Paso 6
n_T=(n_1+n_2)/2    % Hacemos la media de las 2 n n.

nT=real(n_T)       % Cogemos la parte real de la media de n.

tau=nT/(A*nT+B*(nT^2)+C*(nT^3))    % Obtenemos tau.

Tr=tau*log(9)      % Obtenemos el tiempo de respuesta.
