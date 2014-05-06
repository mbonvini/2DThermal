within NewThermal.Functions;
function derT_NoThermalTwoBoundaries
  input Real C;
  input Real G;
  input Real T,Q_flow,Q_flow1,u1,u2;
  output Real derT;
algorithm
  derT := 1/C*(Q_flow + Q_flow1 + 2*G*(u1-T) + 2*G*(u2-T));
end derT_NoThermalTwoBoundaries;
