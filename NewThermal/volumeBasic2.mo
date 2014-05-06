within NewThermal;
model volumeBasic2

  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b1 annotation (
      Placement(transformation(extent={{-10,-110},{10,-90}}),
        iconTransformation(extent={{-10,-110},{10,-90}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b2 annotation (
      Placement(transformation(extent={{90,-10},{110,10}}), iconTransformation(
          extent={{90,-10},{110,10}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a1 annotation (
      Placement(transformation(extent={{-10,90},{10,110}}), iconTransformation(
          extent={{-10,90},{10,110}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a2
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}}),
        iconTransformation(extent={{-110,-10},{-90,10}})));
  Modelica.SIunits.Temperature T(start=Tstart);
  parameter Modelica.SIunits.HeatCapacity C=100
    "Heat capacity of element (= cp*m)";
  parameter Modelica.SIunits.Temperature Tstart=273.15 + 20;
  parameter Modelica.SIunits.ThermalConductance G=1
    "Constant thermal conductance of material";
equation
  C*der(T) = port_b1.Q_flow + port_b2.Q_flow + port_a1.Q_flow + port_a2.Q_flow;
  port_b1.Q_flow = (port_b1.T - T)*G;
  port_b2.Q_flow = (port_b2.T - T)*G;
  port_a1.Q_flow = (port_a1.T - T)*G;
  port_a2.Q_flow = (port_a2.T - T)*G;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={Ellipse(
          extent={{-100,100},{102,-100}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}));
end volumeBasic2;
