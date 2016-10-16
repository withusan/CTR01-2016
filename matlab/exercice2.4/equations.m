function dvariables = equations(t, variables, A, B, D)
    % On commence par r�cup�rer les variables dans le bon ordre
    u = variables(1);
    v = variables(2);
    x = variables(3);
    y = variables(4);
    z = variables(5);

  
    % On d�finit r comme dans la donn�e
    r = A * u * x - B * y * z;
    
    % Si t est sup�rieur � 4000, D prend la valeur de 0
    if t > 4000
        D = 0;
    end
        
    % On d�finit les �quations diff�rencielles dans le bon ordre
    dudt = - r - D/v * u;
    dvdt = D;
    dxdt = - r + D/v * (10.93 - x);
    dydt = r - D/v * y;
    dzdt = r - D/v * z;
    
    % On retourne les �quations diff�rence sous la forme d'un vecteur colonne
    dvariables = [dudt; dvdt; dxdt; dydt; dzdt];
end
