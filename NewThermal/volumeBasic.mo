within NewThermal;
model volumeBasic

  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(C=C, T(
        start=Tstart))
    annotation (Placement(transformation(extent={{-10,2},{10,22}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor(G=
        G) annotation (Placement(transformation(extent={{34,-16},{54,4}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=
       G) annotation (Placement(transformation(extent={{-76,-12},{-56,8}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=
       G) annotation (Placement(transformation(extent={{-8,-46},{12,-26}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G=
       G) annotation (Placement(transformation(extent={{-8,56},{12,76}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b1 annotation (
      Placement(transformation(extent={{-10,-110},{10,-90}}),
        iconTransformation(extent={{-10,-110},{10,-90}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b2 annotation (
      Placement(transformation(extent={{90,-10},{110,10}}), iconTransformation(
          extent={{90,-10},{110,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a1 annotation (
      Placement(transformation(extent={{-10,90},{10,110}}), iconTransformation(
          extent={{-10,90},{10,110}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a2 annotation (
      Placement(transformation(extent={{-110,-10},{-90,10}}),
        iconTransformation(extent={{-110,-10},{-90,10}})));
  parameter Modelica.SIunits.HeatCapacity C=100
    "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.Temperature Tstart=273.15 + 20;
  parameter Modelica.SIunits.ThermalConductance G=1
    "Constant thermal conductance of material";
equation
  connect(thermalConductor1.port_b, heatCapacitor.port) annotation (Line(
      points={{-56,-2},{0,-2},{0,2}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heatCapacitor.port, thermalConductor.port_a) annotation (Line(
      points={{0,2},{0,-6},{34,-6}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heatCapacitor.port, thermalConductor3.port_b) annotation (Line(
      points={{0,2},{0,-14},{20,-14},{20,66},{12,66}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heatCapacitor.port, thermalConductor2.port_a) annotation (Line(
      points={{0,2},{0,-18},{-18,-18},{-18,-36},{-8,-36}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(thermalConductor2.port_b, port_b1) annotation (Line(
      points={{12,-36},{18,-36},{18,-78},{0,-78},{0,-100}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(thermalConductor.port_b, port_b2) annotation (Line(
      points={{54,-6},{74,-6},{74,4.44089e-16},{100,4.44089e-16}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(thermalConductor3.port_a, port_a1) annotation (Line(
      points={{-8,66},{-28,66},{-28,90},{0,90},{0,100}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(thermalConductor1.port_a, port_a2) annotation (Line(
      points={{-76,-2},{-88,-2},{-88,4.44089e-16},{-100,4.44089e-16}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
          Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}));
end volumeBasic;
