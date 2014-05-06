double derT_NoThermalTwoBoundaries_EXT(double, double, double, double, double, double, double);

double derT_NoThermalTwoBoundaries_EXT(double C, double G, double T, double Q_flow, double Q_flow1, double u1, double u2){
	return 1/C*(Q_flow + Q_flow1 + 2*G*(u1 - T) + 2*G*(u2 - T));
}
