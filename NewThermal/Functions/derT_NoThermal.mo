within NewThermal.Functions;
function derT_NoThermal
  input Real C;
  input Real G;
  input Real T,u,u1,u2,u3;
  output Real derT;
algorithm
  derT := 1/C*(2*G*(u - T) + 2*G*(u1 - T) + 2*G*(u2 - T) + 2*G*(u3 - T));
end derT_NoThermal;
