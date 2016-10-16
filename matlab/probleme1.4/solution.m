% Houskeeping
clc;
clear;

% Définition des constantes
k = 10;

% Définition des conditions initiales
x0 = 0.7990;
y0 = 0.7990;
z0 = 0;

% Comme on ne peut passer qu'une seule condition au solveur, on encapsule les
% conditions dans un vecteur.
variables0 = [x0, y0, z0];
tspan = 0 : 1 : 1000;

% On appelle le solveur qui s'appelle ode45() en Matlab
[t, valeurs] = ode45(@(t, variables) equations(t,variables,k), tspan, variables0);

% On termine par l'affichage des graphiques
plot(t, valeurs);
xlabel('t');
ylabel('x,y,z');
legend('x','y','z');

