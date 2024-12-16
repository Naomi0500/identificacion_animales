

% Proposiciones que describen características de los perros
prop(1, canido, p).            % Es un cánido
prop(2, pequeno, p).           % Es pequeño
prop(3, grande, p).            % Es grande
prop(4, domestico, p).         % Es doméstico
prop(5, 'fiel a su amo', p).   % Es fiel a su amo

% Regla para inferir el tipo de animal basado en sus propiedades
regla(1, y, [1, 50, 4, 5], 101, 0.9).   % Regla para identificar un perro

% Clase inferible
clase(I, objetivos,[101]).    % Clase posible: perro (101)

% Definición de peso_prop
peso_prop(101, Peso) :- Peso is 0.90.  % Peso del perro

% Definición de reportar_clase
reportar_clase(Clase) :- 
    write('Clase: PERRO'), nl.
