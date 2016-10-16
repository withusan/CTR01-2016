% Houskeeping
clc;
clear;

% Définition des constantes
A = 0.00009;
B = 0.0000833;
D = 0.05;

% Définition des conditions initiales
u0 = 7.72;
v0 = 200;
x0 = 0;
y0 = 0;
z0 = 0;

% Comme on ne peut passer qu'une seule condition au solveur, on encapsule les
% conditions dans un vecteur.
variables0 = [u0, v0, x0, y0, z0];
tspan = 0 : 1 : 5000;

% On appelle le solveur qui s'appelle ode45() en Matlab
[t, valeurs] = ode45(@(t, variables) equations(t,variables,A,B,D), tspan, variables0);

u = valeurs(:,1);
v = valeurs(:,2);
x = valeurs(:,3);
y = valeurs(:,4);
z = valeurs(:,5);

% On termine par l'affichage des graphiques
figure(1);
plot(t, u, t, x, t, y, t, z);
xlabel('t (s)');
ylabel('u,x,y,z');
legend('u','x','y','z');

figure(2);
plot(t, v);
xlabel('t (s)');
ylabel('v');

