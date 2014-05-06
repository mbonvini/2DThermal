within NewThermal;
model BlockNoThermal
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T=
        303.15)
    annotation (Placement(transformation(extent={{-66,20},{-46,40}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=
        303.15)
    annotation (Placement(transformation(extent={{-66,-20},{-46,0}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature2(T=
        293.15) annotation (Placement(transformation(extent={{76,20},{56,40}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature3(T=
        293.15) annotation (Placement(transformation(extent={{74,-20},{54,0}})));
  NewThermal.volumeBasicNoThermalOneBoundary volumeBasicNoThermalOneBoundary1
    annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
  NewThermal.volumeBasicNoThermalOneBoundary volumeBasicNoThermalOneBoundary2
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={24,30})));
  NewThermal.volumeBasicNoThermalOneBoundary volumeBasicNoThermalOneBoundary3
    annotation (Placement(transformation(extent={{-30,-20},{-10,0}})));
  NewThermal.volumeBasicNoThermalOneBoundary volumeBasicNoThermalOneBoundary4
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={24,-10})));
equation
  connect(volumeBasicNoThermalOneBoundary2.port, fixedTemperature2.port)
    annotation (Line(
      points={{34,30},{56,30}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary4.port, fixedTemperature3.port)
    annotation (Line(
      points={{34,-10},{54,-10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(fixedTemperature.port, volumeBasicNoThermalOneBoundary1.port)
    annotation (Line(
      points={{-46,30},{-30,30}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(fixedTemperature1.port, volumeBasicNoThermalOneBoundary3.port)
    annotation (Line(
      points={{-46,-10},{-30,-10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary2.T, volumeBasicNoThermalOneBoundary1.u2)
    annotation (Line(
      points={{14,40},{-2,40},{-2,30},{-10,30}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary1.T, volumeBasicNoThermalOneBoundary1.u3)
    annotation (Line(
      points={{-10,20},{2,20},{2,52},{-20,52},{-20,40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary1.T, volumeBasicNoThermalOneBoundary3.u3)
    annotation (Line(
      points={{-10,20},{-4,20},{-4,8},{-20,8},{-20,4.44089e-16}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary4.T, volumeBasicNoThermalOneBoundary3.u2)
    annotation (Line(
      points={{14,0},{2,0},{2,-10},{-10,-10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary4.T, volumeBasicNoThermalOneBoundary2.u3)
    annotation (Line(
      points={{14,0},{6,0},{6,10},{24,10},{24,20}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary2.T, volumeBasicNoThermalOneBoundary4.u1)
    annotation (Line(
      points={{14,40},{8,40},{8,14},{18,14},{18,6},{24,6},{24,4.44089e-16}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary1.T, volumeBasicNoThermalOneBoundary2.u2)
    annotation (Line(
      points={{-10,20},{4,20},{4,30},{14,30}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary2.T, volumeBasicNoThermalOneBoundary2.u1)
    annotation (Line(
      points={{14,40},{8,40},{8,52},{24,52},{24,40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary3.T, volumeBasicNoThermalOneBoundary4.u2)
    annotation (Line(
      points={{-10,-20},{6,-20},{6,-10},{14,-10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary3.T, volumeBasicNoThermalOneBoundary3.u1)
    annotation (Line(
      points={{-10,-20},{0,-20},{0,-28},{-20,-28},{-20,-20}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary4.T, volumeBasicNoThermalOneBoundary4.u3)
    annotation (Line(
      points={{14,0},{10,0},{10,-26},{24,-26},{24,-20}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(volumeBasicNoThermalOneBoundary3.T, volumeBasicNoThermalOneBoundary1.u1)
    annotation (Line(
      points={{-10,-20},{-4,-20},{-4,6},{-16,6},{-16,10},{-20,10},{-20,20}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Documentation(info="<html>
Translation of <a href=\"Modelica://NewThermal.BlockNoThermal\">NewThermal.BlockNoThermal</a>:<br><br>The DAE has 32 scalar unknowns and 32 scalar equations.<br><br>Statistics<br><br>Original Model<br>  Number of components: 9<br>  Variables: 48<br>  Parameters: 16 (16 scalars)<br>  Unknowns: 32 (32 scalars)<br>  Differentiated variables: 4 scalars<br>  Equations: 28<br>    Nontrivial : 24<br><br>Translated Model<br>  Free parameters: 16 scalars<br>  Continuous time states: 4 scalars<br>  Time-varying variables: 8 scalars<br>  Alias variables: 24 scalars<br>  Assumed default initial conditions: 4<br>  Number of mixed real/discrete systems of equations: 0<br>  Sizes of linear systems of equations: { }<br>  Sizes after manipulation of the linear systems: { }<br>  Sizes of nonlinear systems of equations: { }<br>  Sizes after manipulation of the nonlinear systems: { }<br>  Number of numerical Jacobians: 0<br><br>&nbsp;=&nbsp;true<br><br>Finished<br><br>Finished
</html>"));
end BlockNoThermal;
