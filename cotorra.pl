

% Proposiciones que describen características de las cotorras
prop(9, ave, p).               % Es un ave
prop(2, pequeno, p).           % Es pequeño
prop(10, habla, p).            % Habla

% Regla para inferir el tipo de animal basado en sus propiedades
regla(3, y, [9, 2, 10], 103, 1.0).      % Regla para identificar una cotorra

% Clase inferible
clase(I, objetivos,[103]).    % Clase posible: cotorra (103)

% Definición de peso_prop
peso_prop(103, Peso) :- Peso is 1.00.  % Peso de la cotorra

% Definición de reportar_clase
reportar_clase(Clase) :- 
    write('Clase: COTORRA'), nl.
