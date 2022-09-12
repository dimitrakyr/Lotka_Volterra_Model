clc; clear all; close all;

fprintf('Lotka - Volterra Model \n\n')
pause(1)
fprintf('by Dimitra Kyriakouli \n\n')
pause(1)

tspan = linspace(0, 50, 1001);

% parameters of Lotka - Volterra Model
a1 = 40; b1 = 2; c1 = 0.5; d1 = 70;  % 0 < t <= 25
a2 = 20; b2 = 1; c2 = 0.25; d2 = 35; % t > 25

y0 = [20 80];

% Solving the differential system of equations with ode45
[t,y] = ode45(@(t,y) lot_vo(t,y,a1,b1,c1,d1,a2,b2,c2,d2), tspan, y0);

% Plotting y1 and y2
figure(1);
plot(t,y(:,1),'b',t,y(:,2),'c',t,y(:,1)+y(:,2),'m');

grid on;
title('Lotka - Volterra Model', 'FontSize', 18);
xlabel('Time', 'FontSize', 18); 
ylabel('Population', 'FontSize', 18);
legend('predator', 'prey', 'predator + prey','Location', 'southoutside', 'FontSize', 14);

% Phase Plane of Lotka - Volterra Model
figure(2);
plot(y(:,1),y(:,2),'m');
title('Phase Plane of Lotka - Volterra Model', 'FontSize', 18);
xlabel('Predator', 'FontSize', 18); 
ylabel('Prey', 'FontSize', 18);

pause(1);
fprintf('\nTHE END \n\n')