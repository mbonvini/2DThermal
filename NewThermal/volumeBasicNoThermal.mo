within NewThermal;
model volumeBasicNoThermal
  parameter Modelica.SIunits.HeatCapacity C=100
    "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.Temperature Tstart=273.15 + 20;
  parameter Modelica.SIunits.ThermalConductance G=1
    "Constant thermal conductance of material";
  Modelica.Blocks.Interfaces.RealInput u
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
  Modelica.Blocks.Interfaces.RealInput u1
    annotation (Placement(transformation(extent={{-26,-120},{14,-80}}),
        iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={0,-100})));
  Modelica.Blocks.Interfaces.RealInput u2
    annotation (Placement(transformation(extent={{70,-20},{110,20}}),
        iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={100,0})));
  Modelica.Blocks.Interfaces.RealInput u3
    annotation (Placement(transformation(extent={{-30,60},{10,100}}),
        iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,100})));
  Modelica.Blocks.Interfaces.RealOutput T(start=Tstart)
    annotation (Placement(transformation(extent={{80,-120},{120,-80}}),
        iconTransformation(extent={{80,-120},{120,-80}})));
equation
   der(T) = NewThermal.Functions.derT_NoThermal_EXT(C,G,T,u,u1,u2,u3);
  annotation (                               Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}), graphics={Polygon(
          points={{-100,-2},{0,102},{102,-2},{2,-102},{-100,-2}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}));
end volumeBasicNoThermal;
