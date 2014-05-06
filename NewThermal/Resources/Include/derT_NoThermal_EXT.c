double derT_NoThermal_EXT(double, double, double, double, double, double, double);

double derT_NoThermal_EXT(double C, double G, double T, double u, double u1, double u2, double u3){
	return 1/C*(2*G*(u - T) + 2*G*(u1 - T) + 2*G*(u2 - T) + 2*G*(u3 - T));
}
