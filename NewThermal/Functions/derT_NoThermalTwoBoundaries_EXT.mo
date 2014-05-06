within NewThermal.Functions;
function derT_NoThermalTwoBoundaries_EXT
  input Real C;
  input Real G;
  input Real T,Q_flow,Q_flow1,u1,u2;
  output Real derT;
  external "C"  annotation(Include="#include \"derT_NoThermalTwoBoundaries_EXT.c\"");
end derT_NoThermalTwoBoundaries_EXT;
