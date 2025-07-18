num = [100.9, 3480, 38330, 132398];
den = [1, 52, 1061, 10108, 37828];

[r, p, k] = residue(num, den);
r
p
k

% Crear tiempo y evaluar la función
t = linspace(0, 1, 30);
y = 5.5433 * exp(-14 * t) + ...
    18.6491 * t .* exp(-14 * t) + ...
    124.27 * exp(-12 * t) .* cos(7 * t + 0.70);

% Colores personalizados
axisTextColor = [0.2 0.2 0.2];  % Gris oscuro

% Crear la figura
figure;
plot(t, y, 'o-', 'LineWidth', 1.5);

% Estética del gráfico
set(gcf, 'Color', 'white');               % Fondo de figura blanco
set(gca, 'Color', 'white');               % Fondo de los ejes blanco
set(gca, 'XColor', axisTextColor);        % Color del eje X
set(gca, 'YColor', axisTextColor);        % Color del eje Y
set(gca, 'Box', 'on');                    % Mostrar bordes

% Títulos y etiquetas con color
xlabel('Tiempo t (s)', 'Color', axisTextColor);
ylabel('y(t)', 'Color', axisTextColor);
title('Respuesta al impulso y(t)', 'Color', axisTextColor);

% Si hay leyenda, definir su color también
% legend('Respuesta','TextColor', axisTextColor, 'EdgeColor', 'none', 'Color', 'white');

% Exportar como imagen
exportgraphics(gcf, '../img/2-a-1.png', 'BackgroundColor', 'white', 'Resolution', 300);