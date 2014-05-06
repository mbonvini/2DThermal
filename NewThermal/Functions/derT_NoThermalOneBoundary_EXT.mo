within NewThermal.Functions;
function derT_NoThermalOneBoundary_EXT
  input Real C;
  input Real G;
  input Real T,Q_flow,u1,u2,u3;
  output Real derT;
  external "C"  annotation(Include="#include \"derT_NoThermalOneBoundary_EXT.c\"");
end derT_NoThermalOneBoundary_EXT;
