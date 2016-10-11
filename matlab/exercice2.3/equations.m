function dvariables = equations(t, variables, A, B, C, D)
    x = variables(1);
    y = variables(2);
    
    dxdt = A * x - B * x * y;
    dydt = C * x * y - D * y;
    
    dvariables = [dxdt; dydt];
end