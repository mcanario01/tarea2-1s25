% Definir el vector de tiempo con 30 puntos equidistantes
t = linspace(0, 1, 30);

% Evaluar la respuesta y(t)
y = 3.5 ...
    - 0.4911 * exp(-14 * t) ...
    - 1.3321 * t .* exp(-14 * t) ...
    + 8.986 * exp(-12 * t) .* cos(7 * t + 1.91);

% Crear colores personalizados
axisTextColor = [0.2 0.2 0.2];  % Gris oscuro

% Crear la figura
figure;
plot(t, y, 'o-', 'LineWidth', 1.5);
grid on;
xlabel('Tiempo t (s)', 'Color', axisTextColor);
ylabel('y(t)', 'Color', axisTextColor);
title('Respuesta al escalon unitario y(t)', 'Color', axisTextColor);

% Configurar colores para fondo blanco
set(gcf, 'Color', 'white');
set(gca, 'Color', 'white');
set(gca, 'XColor', axisTextColor);
set(gca, 'YColor', axisTextColor);
set(gca, 'Box', 'on');

% Exportar como imagen
exportgraphics(gcf, '../img/2-a-2.png', 'BackgroundColor', 'white', 'Resolution', 300);
