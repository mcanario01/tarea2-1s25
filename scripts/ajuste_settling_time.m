num_modificado = conv([0.08, 1], [1260.93, 27740.53, 132398.0]);
den = [1, 52, 1061, 10108, 37828];
H2 = tf(num_modificado, den);

% Respuesta al escalón
[y, t] = step(H2);

% Valor final
y_ss = dcgain(H2);

% Margen de ±2%
margen = 0.02 * y_ss;
lim_inf = y_ss - margen;
lim_sup = y_ss + margen;

% Buscar el último punto fuera del margen
fuera = find((y < lim_inf) | (y > lim_sup));
if isempty(fuera)
    ts = 0;  % la señal ya está dentro del margen
else
    ts = t(fuera(end));  % tiempo del último punto fuera del 2%
end

fprintf('Tiempo de asentamiento (±2%%): %.2f segundos\n', ts);
figure;
impulse(H2);
title('Respuesta al impulso del sistema');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;