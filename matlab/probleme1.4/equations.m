function dvariables = equations(t, variables, k)
    % On commence par récupérer les variables dans le bon ordre
    x = variables(1);
    y = variables(2);
    z = variables(3);

  
    % On définit B comme dans la donnée
    B = 1 - x / 0.7990;

    % On définit A comme dans la donnée
    A = 4 * (1 - 0.5 * B);

      
    % On définit les équations différencielles dans le bon ordre
    dx = - k * x * x * y / (A * A * A); % On peut écrire x^2 pour mettre à la puissance
    dy = - k * x^2 * y / A^3;
    dz = k * x^2 * y / A^3;

    % On retourne les équations différence sous la forme d'un vecteur colonne
    dvariables = [dx; dy; dz];
end
