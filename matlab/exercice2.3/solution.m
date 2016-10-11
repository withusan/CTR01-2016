% Housekeeping
clc;
clear;

% Constantes
A = 0.02;
B = 0.00004;
C = 0.0004;
D = 0.04;

% Conditions initiales
x0 = 500;
y0 = 200;

% Résoudre le problème
variables0 = [x0 y0]; % conditions initiales sous forme de vecteur
tspan = 0 : 1 : 1000; % domaine d'intégration

[t, valeurs] = ode45(@(t,variables) equations(t,variables,A,B,C,D), tspan, variables0);

plot(t, valeurs);
xlabel('temps (jours)');
ylabel('x, y');
legend('x', 'y');

