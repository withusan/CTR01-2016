function ret = solution

    % Constants
    k = 0.01; % (1/s)

    % Initial conditions
    C10 = 3; % mol/L
    C20 = 0; % mol/L
    C30 = 0; % mol/L
    y0 = [C10 C20 C30];
    
    function dy = bilans(t, y)
        C1 = y(1);
        C2 = y(2);
        C3 = y(3);

        % Rate laws
        r = k * C1;

        % Rates of transformation of each species
        R1 = -r;
        R2 = r;
        R3 = r;

        % Partial molar balance equations
        dC1 = R1;
        dC2 = R2;
        dC3 = R3;

        dy = [dC1; dC2; dC3];
    end

    % Integration limits
    tspan = [0 300]; % s

    % Call to the solver
    [t, y] = ode45(@bilans, tspan, y0);

    plot(t, y);
    xlabel('t (s)');
    ylabel('c (mol/L)');
    legend('A_1', 'A_2', 'A_3');
    
    ret = [t y];
end
