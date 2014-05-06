within NewThermal.Functions;
function derT_NoThermal_EXT
  input Real C;
  input Real G;
  input Real T,u,u1,u2,u3;
  output Real derT;
  external "C"  annotation(Include="#include \"derT_NoThermal_EXT.c\"");
end derT_NoThermal_EXT;
