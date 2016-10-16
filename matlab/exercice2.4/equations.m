function dvariables = equations(t, variables, A, B, D)
    % On commence par récupérer les variables dans le bon ordre
    u = variables(1);
    v = variables(2);
    x = variables(3);
    y = variables(4);
    z = variables(5);

  
    % On définit r comme dans la donnée
    r = A * u * x - B * y * z;
    
    % Si t est supérieur à 4000, D prend la valeur de 0
    if t > 4000
        D = 0;
    end
        
    % On définit les équations différencielles dans le bon ordre
    dudt = - r - D/v * u;
    dvdt = D;
    dxdt = - r + D/v * (10.93 - x);
    dydt = r - D/v * y;
    dzdt = r - D/v * z;
    
    % On retourne les équations différence sous la forme d'un vecteur colonne
    dvariables = [dudt; dvdt; dxdt; dydt; dzdt];
end
