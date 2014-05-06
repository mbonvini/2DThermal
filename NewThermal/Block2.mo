within NewThermal;
model Block2
  import NewThermal;
  NewThermal.volumeBasic2 volumeBasic1
    annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
  NewThermal.volumeBasic2 volumeBasic2
    annotation (Placement(transformation(extent={{-30,-20},{-10,0}})));
  NewThermal.volumeBasic2 volumeBasic3
    annotation (Placement(transformation(extent={{16,-20},{36,0}})));
  NewThermal.volumeBasic2 volumeBasic4
    annotation (Placement(transformation(extent={{16,20},{36,40}})));
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
equation
  connect(fixedTemperature.port, volumeBasic1.port_a2) annotation (Line(
      points={{-46,30},{-38,30},{-38,30},{-30,30}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(fixedTemperature1.port, volumeBasic2.port_a2) annotation (Line(
      points={{-46,-10},{-30,-10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic2.port_b2, volumeBasic3.port_a2) annotation (Line(
      points={{-10,-10},{16,-10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic1.port_b2, volumeBasic4.port_a2) annotation (Line(
      points={{-10,30},{3,30},{3,30},{16,30}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic4.port_b1, volumeBasic3.port_a1) annotation (Line(
      points={{26,20},{26,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic1.port_b1, volumeBasic2.port_a1) annotation (Line(
      points={{-20,20},{-20,4.44089e-16}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic3.port_b2, fixedTemperature3.port) annotation (Line(
      points={{36,-10},{54,-10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic4.port_b2, fixedTemperature2.port) annotation (Line(
      points={{36,30},{56,30}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Documentation(info="<html>
Translation of <a href=\"Modelica://NewThermal.Block2\">NewThermal.Block2</a>:<br><br>The DAE has 44 scalar unknowns and 44 scalar equations.<br><br>Statistics<br><br>Original Model<br>  Number of components: 9<br>  Variables: 60<br>  Parameters: 16 (16 scalars)<br>  Unknowns: 44 (44 scalars)<br>  Differentiated variables: 4 scalars<br>  Equations: 32<br>    Nontrivial : 28<br><br>Translated Model<br>  Constants: 4 scalars<br>  Free parameters: 16 scalars<br>  Continuous time states: 4 scalars<br>  Time-varying variables: 20 scalars<br>  Alias variables: 20 scalars<br>  Assumed default initial conditions: 4<br>  Number of mixed real/discrete systems of equations: 0<br>  Sizes of linear systems of equations: {2, 2, 2, 2}<br>  Sizes after manipulation of the linear systems: {0, 0, 0, 0}<br>  Sizes of nonlinear systems of equations: { }<br>  Sizes after manipulation of the nonlinear systems: { }<br>  Number of numerical Jacobians: 0<br><br>&nbsp;=&nbsp;true<br><br>Finished
</html>"));
end Block2;
