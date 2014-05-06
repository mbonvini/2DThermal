within NewThermal;
model exampleCompoundBasic2
  compoundBasic2 compoundBasic1(
    C=2000,
    G=0.1,
    I=40,
    J=40) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T=
        303.15)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector thermalCollector(m=
        40) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-30,0})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector thermalCollector1(m=
       40) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={30,0})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature2(T=
        293.15) annotation (Placement(transformation(extent={{80,-10},{60,10}})));
equation
  connect(fixedTemperature.port, thermalCollector.port_b) annotation (Line(
      points={{-60,0},{-40,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(thermalCollector.port_a, compoundBasic1.port_a1) annotation (Line(
      points={{-20,0},{-10,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(thermalCollector1.port_a, compoundBasic1.port_b1) annotation (Line(
      points={{20,1.33227e-15},{20,0},{9.8,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(fixedTemperature2.port, thermalCollector1.port_b) annotation (Line(
      points={{60,0},{40,0}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end exampleCompoundBasic2;
