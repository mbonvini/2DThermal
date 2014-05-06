within NewThermal;
model Block
  NewThermal.volumeBasic volumeBasic1
    annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
  NewThermal.volumeBasic volumeBasic2
    annotation (Placement(transformation(extent={{-30,-20},{-10,0}})));
  NewThermal.volumeBasic volumeBasic3
    annotation (Placement(transformation(extent={{16,-20},{36,0}})));
  NewThermal.volumeBasic volumeBasic4
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
      points={{-46,-10},{-38,-10},{-38,-10},{-30,-10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volumeBasic2.port_b2, volumeBasic3.port_a2) annotation (Line(
      points={{-10,-10},{4,-10},{4,-10},{16,-10}},
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
Translation of <a href=\"Modelica://NewThermal.Block\">NewThermal.Block</a>:<br><br>The DAE has 152 scalar unknowns and 152 scalar equations.<br><br>Statistics<br><br>Original Model<br>  Number of components: 29<br>  Variables: 188<br>  Parameters: 36 (36 scalars)<br>  Unknowns: 152 (152 scalars)<br>  Differentiated variables: 4 scalars<br>  Equations: 120<br>    Nontrivial : 96<br><br>Translated Model<br>  Constants: 16 scalars<br>  Free parameters: 16 scalars<br>  Parameter depending: 24 scalars<br>  Continuous time states: 4 scalars<br>  Time-varying variables: 36 scalars<br>  Alias variables: 96 scalars<br>  Assumed default initial conditions: 4<br>  Number of mixed real/discrete systems of equations: 0<br>  Sizes of linear systems of equations: {4, 4, 4, 4}<br>  Sizes after manipulation of the linear systems: {0, 0, 0, 0}<br>  Sizes of nonlinear systems of equations: { }<br>  Sizes after manipulation of the nonlinear systems: { }<br>  Number of numerical Jacobians: 0<br><br>&nbsp;=&nbsp;true<br><br>Finished</html>"));
end Block;
