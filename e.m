
    % Ask user for input values
    x = input('Enter the  (DoD) of the battery (0 < DoD < 1): ');
    N = input('Enter the number of series connected cells in the battery (N > 0): ');
    
    % Call the open_circuit_voltage_LA function with user inputs
        E_oc = open_circuit_voltage_LA(x, N);
        fprintf('The open circuit voltage of the battery is %.2f V.\n', E_oc);
 