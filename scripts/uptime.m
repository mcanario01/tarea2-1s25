% Definimos la funcion de transferencia
num_modificado = conv([0.08, 1], [1260.93, 27740.53, 132398.0]);
den = [1, 52, 1061, 10108, 37828];
H2 = tf(num_modificado, den);

% Entrada de un escalon
[y, t] = step(H2);

% Valor final (estado estacionario)
y_ss = dcgain(H2);

% Definir los umbrales del 10% y 90%
y10 = 0.10 * y_ss;
y90 = 0.90 * y_ss;

% Buscar los tiempos en que se cruzan los umbrales
i10 = find(y >= y10, 1, 'first');
i90 = find(y >= y90, 1, 'first');

t_rise = t(i90) - t(i10);

% Mostrar resultado
fprintf('Tiempo de subida (10%% a 90%%): %.4f segundos\n', t_rise);

H2