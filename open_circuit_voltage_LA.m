%save the fuction name same as file name 
function E_oc = open_circuit_voltage_LA(x,N)%so save file name as open_circuit_voltage_LA
    if (x < 0)
        error('Depth of discharge (DoD) must be between 0 and 1. it is lessthan 0');
        
    end
    if (x > 1)
        error('Depth of discharge (DoD) must be between 0 and 1. value is greater than 1 ');
    end
    E_oc = N * (2.15 - x * (2.15 - 2.00));
  
end

