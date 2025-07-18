% Numerador y denominador de Y(s) = H(s) * 1/s
num_Y = [100.9, 3480, 38330, 132398];
den_H = [1, 52, 1061, 10108, 37828];

% Agregar el factor 1/s (escalón) → multiplicamos el denominador por s
den_Y = conv([1, 0], den_H);  % s * H(s)

% Descomposición en fracciones parciales
[r, p, k] = residue(num_Y, den_Y);

% Mostrar resultados
disp('Residuo r ='); disp(r);
disp('Polos p ='); disp(p);
disp('Término directo k ='); disp(k);

