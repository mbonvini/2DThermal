within NewThermal;
model compoundBasic2

  volumeBasic2 volume[
                     I,J](
    each Tstart=Tstart,
    each G=G,
    each C=C/(I*J))
         annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  parameter Modelica.SIunits.HeatCapacity C=100
    "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.Temperature Tstart=273.15 + 20;
  parameter Modelica.SIunits.ThermalConductance G=1
    "Constant thermal conductance of material";
  parameter Modelica.SIunits.Length X = 1.0;
  parameter Modelica.SIunits.Length Y = 1.0;
  parameter Integer I=10;
  parameter Integer J=10;
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a1[J]
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a2[I]
    annotation (Placement(transformation(extent={{-10,88},{10,108}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b1[J]
    annotation (Placement(transformation(extent={{88,-10},{108,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b2[I]
    annotation (Placement(transformation(extent={{-10,-108},{10,-88}})));
equation
  // External connectors
  connect(volume[1,:].port_a2, port_a1) annotation (Line(
      points={{-10,0},{-100,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volume[:,J].port_a1, port_a2) annotation (Line(
      points={{0,10},{0,98}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volume[I,:].port_b2, port_b1) annotation (Line(
      points={{10,0},{98,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(volume[:,1].port_b1, port_b2) annotation (Line(
      points={{0,-10},{0,-98}},
      color={191,0,0},
      smooth=Smooth.None));

  // Inner connections
  for i in 1:I-1 loop
    connect(volume[i,:].port_b2, volume[i+1,:].port_a2);
  end for;
  for j in 1:J-1 loop
    connect(volume[:,j].port_a1, volume[:,j+1].port_b1);
  end for;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(graphics={                       Ellipse(
          extent={{-100,100},{102,-100}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}));
end compoundBasic2;
