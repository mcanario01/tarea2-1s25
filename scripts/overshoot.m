num = [1260.93, 27740.53, 132398.0];
den = [1, 52, 1061, 10108, 37828];

H = tf(num, den);

[y, t] = step(H);

y_ss = dcgain(H);               % Valor final
y_max = max(y);                 % Valor máximo de la salida
OS = (y_max - y_ss)/y_ss * 100; % Sobreimpulso en %

fprintf('Valor final: %.4f\n', y_ss);
fprintf('Valor máximo: %.4f\n', y_max);
fprintf('Sobreimpulso: %.2f%%\n', OS);
