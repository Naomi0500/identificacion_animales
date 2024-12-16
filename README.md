% Proposiciones que describen características de los animales
prop(1, canido, p).            % Es un cánido
prop(2, pequeno, p).           % Es pequeño
prop(3, grande, p).            % Es grande
prop(4, domestico, p).         % Es doméstico
prop(5, 'fiel a su amo', p).   % Es fiel a su amo
prop(7, felido, p).            % Es un félido
prop(8, 'caza ratones', p).    % Caza ratones
prop(9, ave, p).               % Es un ave
prop(10, habla, p).            % Habla

% Reglas para inferir el tipo de animal basado en sus propiedades
regla(1, y, [1, 50, 4, 5], 101, 0.9).   % Regla para identificar un perro
regla(2, y, [7, 2, 4, 8], 102, 0.8).    % Regla para identificar un gato
regla(3, y, [9, 2, 10], 103, 1.0).      % Regla para identificar una cotorra
regla(4, o, [2, 3], 50, 1.0).           % Regla para identificar si es pequeño o grande

clase(I, objetivos,[101,102,103]).    % Clases posibles: perro (101), gato (102), cotorra (103)

% Definición de los Predicados 

% Definición de borrar_pesos
borrar_pesos :- 
    retractall(peso(_, _)).  % Borra todos los pesos almacenados

% Definición de peso_prop
peso_prop(Animal, Peso) :-
    (Animal = 101 -> Peso is 0.90;   % Perro
     Animal = 102 -> Peso is 0.80;   % Gato
     Animal = 103 -> Peso is 1.00).   % Cotorra

% Definición de fwrite (puedes usar write en su lugar)
fwrite(X) :- 
    format('~w', [X]).  % Simplemente formatea la salida

% Definición de reportar_clase
reportar_clase(Clase) :- 
    write('Clase: '), write(Clase), nl.

main :-
    nl,
    write(' IDENTIFICA EL TIPO DE ANIMAL'),
    repeat,
    borrar_pesos,
    peso_prop(101,Wp), nl,
    write(' Es un PERRO con peso '), fwrite(Wp),
    peso_prop(102,Wg), nl,
    write(' Es un GATO con peso '), fwrite(Wg),
    peso_prop(103,Wc), nl,
    nl,
    write(' RESUMEN'), reportar_clase(1),
    nl,
    write('Desea otra consulta? [s/n]: '),
    read(R),
    (R = s -> fail; true),
    nl,nl,
    write(' FIN '), nl.
