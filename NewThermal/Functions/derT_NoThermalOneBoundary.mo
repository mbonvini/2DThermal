within NewThermal.Functions;
function derT_NoThermalOneBoundary
  input Real C;
  input Real G;
  input Real T,Q_flow,u1,u2,u3;
  output Real derT;
algorithm
  derT := 1/C*(Q_flow + 2*G*(u1-T) + 2*G*(u2-T) + 2*G*(u3-T));
end derT_NoThermalOneBoundary;
