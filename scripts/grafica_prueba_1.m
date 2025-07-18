% Puntos de la señal
t = [-8  -2   -2   -0.5   4    4    5   7   13];
y = [ 0    0    2     4    2    0   -1   0    0];

% Graficar la señal con líneas que conectan los puntos
figure;
plot(t, y, '-o', 'LineWidth', 1.5);
xlabel('Tiempo (s)');
ylabel('Amplitud');
title('Señal definida por puntos');
grid on;
