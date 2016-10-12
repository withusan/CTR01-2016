function dvariables = equations(t, variables, A, B, C, D)
    x = variables(1);
    y = variables(2);
    
    dx = A * x - B * x * y;
    dy = C * x * y - D * y;
    
    dvariables = [dx; dy];
end
