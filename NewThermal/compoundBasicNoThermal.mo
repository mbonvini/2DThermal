within NewThermal;
model compoundBasicNoThermal

  volumeBasicNoThermal volume[I - 2,J - 2](
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
  volumeBasicNoThermalTwoBoundaries volume1J(
    C=C/(I*J),
    Tstart=Tstart,
    G=G) annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
  volumeBasicNoThermalTwoBoundaries volume11(
    C=C/(I*J),
    Tstart=Tstart,
    G=G) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-70,-70})));
  volumeBasicNoThermalTwoBoundaries volumeIJ(
    C=C/(I*J),
    Tstart=Tstart,
    G=G) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={70,70})));
  volumeBasicNoThermalTwoBoundaries volumeI1(
    C=C/(I*J),
    Tstart=Tstart,
    G=G) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={70,-70})));
  volumeBasicNoThermalOneBoundary volumesJJ[I - 2](
    each C=C/(I*J),
    each Tstart=Tstart,
    each G=G) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,70})));
  volumeBasicNoThermalOneBoundary volumes1I[J - 2](
    each C=C/(I*J),
    each Tstart=Tstart,
    each G=G) annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  volumeBasicNoThermalOneBoundary volumes1J[I - 2](
    each C=C/(I*J),
    each Tstart=Tstart,
    each G=G) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-70})));
  volumeBasicNoThermalOneBoundary volumesII[J - 2](
    each C=C/(I*J),
    each Tstart=Tstart,
    each G=G) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={70,0})));
equation
  /////////// ITERFACES ///////////////////////
  // External connectors (Left)
  connect(port_a1[1], volume11.port1);
  connect(port_a1[2:J-1],volumes1I.port);
  connect(port_a1[J],volume1J.port);

  // External connectors (Right)
  connect(port_b1[1], volumeI1.port);
  connect(port_b1[2:J-1],volumesII.port);
  connect(port_b1[J],volumeIJ.port1);

  // External connectors (Bottom)
  connect(port_b2[1], volume11.port);
  connect(port_b2[2:I-1],volumes1J.port);
  connect(port_b2[I],volumeI1.port1);

  // External connectors (Top)
  connect(port_a2[1], volume1J.port1);
  connect(port_a2[2:I-1],volumesJJ.port);
  connect(port_a2[I],volumeIJ.port);

  //////////////////////////////////////////////
  // Lower Left Corner
  connect(volume11.u1, volumes1J[1].T);
  connect(volume11.u2, volumes1I[1].T);
  connect(volume11.T, volumes1J[1].u3);
  connect(volume11.T, volumes1I[1].u1);

  // Upper Left Corner
  connect(volume1J.u1, volumes1I[J-2].T);
  connect(volume1J.u2, volumesJJ[1].T);
  connect(volume1J.T, volumes1I[J-2].u3);
  connect(volume1J.T, volumesJJ[1].u1);

  // Lower Right Corner
  connect(volumeI1.u1, volumesII[1].T);
  connect(volumeI1.u2, volumes1J[I-2].T);
  connect(volumeI1.T, volumesII[1].u3);
  connect(volumeI1.T, volumes1J[I-2].u1);

  // Upper Right Corner
  connect(volumeIJ.u1, volumesJJ[I-2].T);
  connect(volumeIJ.u2, volumesII[J-2].T);
  connect(volumeIJ.T, volumesJJ[I-2].u3);
  connect(volumeIJ.T, volumesII[J-2].u1);

  //////////////////////////////////////////////
  // UpperBand
  for i in 1:I-2 loop
    connect(volumesJJ[i].u2, volume[i,J-2].T);
    connect(volumesJJ[i].T, volume[i,J-2].u3);
  end for;
  for i in 1:I-3 loop
    connect(volumesJJ[i].u3,volumesJJ[i+1].T);
    connect(volumesJJ[i].T,volumesJJ[i+1].u1);
  end for;

  // LowerBand
  for i in 1:I-2 loop
    connect(volumes1J[i].u2, volume[i,1].T);
    connect(volumes1J[i].T, volume[i,1].u1);
  end for;
  for i in 1:I-3 loop
    connect(volumes1J[i].u1,volumes1J[i+1].T);
    connect(volumes1J[i].T,volumes1J[i+1].u3);
  end for;

  // Leftband
  for j in 1:J-2 loop
    connect(volumes1I[j].T, volume[1,j].u);
    connect(volumes1I[j].u2, volume[1,j].T);
  end for;
  for j in 1:J-3 loop
    connect(volumes1I[j].T, volumes1I[j+1].u1);
    connect(volumes1I[j].u3, volumes1I[j+1].T);
  end for;

  // RightBand
  for j in 1:J-2 loop
    connect(volumesII[j].T, volume[I-2,j].u2);
    connect(volumesII[j].u2, volume[I-2,j].T);
  end for;
  for j in 1:J-3 loop
    connect(volumesII[j].T, volumesII[j+1].u3);
    connect(volumesII[j].u1, volumesII[j+1].T);
  end for;

  //////////////////////////////////////////////
  // Inner connections
  for i in 1:I-3 loop
    connect(volume[i,:].u2, volume[i+1,:].T);
    connect(volume[i,:].T, volume[i+1,:].u);
  end for;
  for j in 1:J-3 loop
    connect(volume[:,j].u3, volume[:,j+1].T);
    connect(volume[:,j].T, volume[:,j+1].u1);
  end for;

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(graphics={
                              Polygon(
          points={{-100,0},{0,104},{102,0},{2,-100},{-100,0}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}));
end compoundBasicNoThermal;
