function dvariables = equations(t, variables, k)
    % On commence par r�cup�rer les variables dans le bon ordre
    x = variables(1);
    y = variables(2);
    z = variables(3);

  
    % On d�finit B comme dans la donn�e
    B = 1 - x / 0.7990;

    % On d�finit A comme dans la donn�e
    A = 4 * (1 - 0.5 * B);

      
    % On d�finit les �quations diff�rencielles dans le bon ordre
    dx = - k * x * x * y / (A * A * A); % On peut �crire x^2 pour mettre � la puissance
    dy = - k * x^2 * y / A^3;
    dz = k * x^2 * y / A^3;

    % On retourne les �quations diff�rence sous la forme d'un vecteur colonne
    dvariables = [dx; dy; dz];
end
