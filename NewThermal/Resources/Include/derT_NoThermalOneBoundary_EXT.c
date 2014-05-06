double derT_NoThermalOneBoundary_EXT(double, double, double, double, double, double, double);

double derT_NoThermalOneBoundary_EXT(double C, double G, double T, double Q_flow, double u1, double u2, double u3){
	return 1/C*(Q_flow + 2*G*(u1 - T) + 2*G*(u2 - T) + 2*G*(u3 - T));
}
