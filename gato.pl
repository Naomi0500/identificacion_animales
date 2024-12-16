
% Proposiciones que describen características de los gatos
prop(7, felido, p).            % Es un félido
prop(2, pequeno, p).           % Es pequeño
prop(4, domestico, p).         % Es doméstico
prop(8, 'caza ratones', p).    % Caza ratones

% Regla para inferir el tipo de animal basado en sus propiedades
regla(2, y, [7, 2, 4, 8], 102, 0.8).    % Regla para identificar un gato

% Clase inferible
clase(I, objetivos,[102]).    % Clase posible: gato (102)

% Definición de peso_prop
peso_prop(102, Peso) :- Peso is 0.80.  % Peso del gato

% Definición de reportar_clase
reportar_clase(Clase) :- 
    write('Clase: GATO'), nl.
