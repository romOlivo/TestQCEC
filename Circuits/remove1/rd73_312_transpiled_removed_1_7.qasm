// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
// o 8 12 20 17 24 2 1 0 7 21 10 15 5 14 4 6 3 16 9 11 25 13 19 23 22
OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[25];
cx q[2], q[3];
cx q[3], q[2];
cx q[2], q[3];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
h q[7];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[8];
h q[8];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
x q[10];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
x q[12];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[12], q[11];
tdg q[11];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[4], q[6];
cx q[6], q[4];
cx q[4], q[6];
cx q[9], q[10];
t q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[12], q[11];
tdg q[11];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[10], q[9];
t q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[9], q[10];
cx q[10], q[11];
t q[10];
tdg q[11];
cx q[10], q[11];
u2(0,3.92699081698724) q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[10], q[9];
tdg q[9];
cx q[8], q[9];
t q[9];
cx q[10], q[9];
t q[10];
tdg q[9];
cx q[8], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
u2(0,3.92699081698724) q[8];
cx q[9], q[10];
tdg q[10];
t q[9];
cx q[9], q[10];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[9], q[5];
h q[5];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[11], q[10];
cx q[10], q[11];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[9], q[5];
tdg q[5];
cx q[0], q[5];
t q[5];
cx q[9], q[5];
tdg q[5];
cx q[5], q[0];
cx q[0], q[5];
rz(7.06858347057703) q[0];
t q[9];
cx q[5], q[9];
t q[5];
tdg q[9];
cx q[5], q[9];
cx q[0], q[5];
cx q[5], q[0];
cx q[0], q[5];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[9], q[5];
tdg q[5];
cx q[0], q[5];
t q[5];
cx q[9], q[5];
tdg q[5];
cx q[5], q[0];
cx q[0], q[5];
u2(0,3.92699081698724) q[0];
t q[9];
cx q[5], q[9];
t q[5];
tdg q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[8];
cx q[5], q[9];
cx q[7], q[8];
h q[8];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[8];
tdg q[8];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[5], q[9];
t q[9];
cx q[8], q[9];
t q[8];
tdg q[9];
cx q[5], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[5], q[9];
t q[5];
rz(7.06858347057703) q[8];
tdg q[9];
cx q[5], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[8], q[9];
tdg q[9];
cx q[5], q[9];
t q[9];
cx q[8], q[9];
t q[8];
tdg q[9];
cx q[5], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[5], q[9];
t q[5];
u2(0,3.92699081698724) q[8];
tdg q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
x q[15];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[10], q[11];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[4], q[6];
cx q[6], q[4];
cx q[4], q[6];
cx q[3], q[4];
cx q[4], q[3];
cx q[3], q[4];
cx q[2], q[3];
cx q[3], q[2];
cx q[2], q[3];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
h q[12];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[0], q[5];
cx q[5], q[0];
cx q[0], q[5];
cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
cx q[9], q[8];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
x q[12];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[5], q[9];
tdg q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[12];
t q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[15], q[18];
cx q[18], q[15];
cx q[15], q[18];
h q[20];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[7], q[16];
tdg q[16];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[7], q[16];
cx q[16], q[7];
cx q[7], q[16];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[8], q[7];
h q[7];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[9], q[8];
cx q[5], q[9];
tdg q[8];
cx q[7], q[8];
t q[8];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
t q[10];
tdg q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[12], q[13];
cx q[13], q[12];
cx q[12], q[11];
tdg q[11];
t q[12];
cx q[12], q[11];
rz(7.06858347057703) q[13];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[8];
tdg q[8];
cx q[8], q[7];
cx q[7], q[8];
u2(0,3.92699081698724) q[7];
t q[9];
cx q[8], q[9];
cx q[5], q[9];
t q[8];
cx q[9], q[5];
cx q[5], q[9];
tdg q[5];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
tdg q[11];
cx q[12], q[11];
t q[11];
cx q[10], q[11];
t q[10];
tdg q[11];
cx q[12], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[11], q[10];
u2(0,3.92699081698724) q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[12], q[13];
cx q[14], q[13];
h q[13];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[11], q[12];
tdg q[12];
cx q[13], q[12];
t q[12];
cx q[11], q[12];
t q[11];
tdg q[12];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
rz(7.06858347057703) q[11];
cx q[13], q[12];
tdg q[12];
t q[13];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
tdg q[12];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[14], q[13];
t q[13];
cx q[12], q[13];
t q[12];
tdg q[13];
cx q[14], q[13];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
tdg q[12];
t q[13];
cx q[13], q[12];
u2(0,3.92699081698724) q[14];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[6];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[13], q[14];
h q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
h q[6];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[9], q[5];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[5], q[9];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[7], q[16];
t q[16];
cx q[19], q[16];
tdg q[16];
t q[19];
cx q[7], q[16];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
u2(0,3.92699081698724) q[19];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[7], q[16];
tdg q[16];
t q[7];
cx q[7], q[16];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[8];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[0], q[5];
cx q[5], q[0];
cx q[0], q[5];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[12], q[11];
cx q[11], q[17];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[17], q[11];
cx q[11], q[17];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[12];
h q[12];
x q[17];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
tdg q[11];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
tdg q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[12];
t q[12];
cx q[5], q[9];
t q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
t q[11];
tdg q[12];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
t q[11];
cx q[13], q[12];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
tdg q[13];
t q[14];
cx q[14], q[13];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[9], q[5];
cx q[5], q[9];
rz(7.06858347057703) q[5];
cx q[9], q[10];
tdg q[10];
t q[9];
cx q[9], q[10];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
h q[10];
cx q[12], q[11];
tdg q[11];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[12], q[11];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[14];
tdg q[14];
cx q[15], q[14];
t q[14];
cx q[13], q[14];
t q[13];
tdg q[14];
cx q[15], q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[14], q[13];
rz(7.06858347057703) q[15];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[13], q[14];
tdg q[14];
cx q[15], q[14];
t q[14];
cx q[13], q[14];
t q[13];
tdg q[14];
cx q[15], q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[14], q[13];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
u2(0,3.92699081698724) q[15];
cx q[15], q[18];
cx q[18], q[15];
cx q[15], q[18];
x q[9];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[9], q[10];
t q[10];
cx q[11], q[10];
tdg q[10];
t q[11];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
u2(0,3.92699081698724) q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[11], q[17];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[17], q[11];
cx q[11], q[17];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[9], q[10];
tdg q[10];
t q[9];
cx q[9], q[10];
h q[10];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[5], q[9];
tdg q[9];
cx q[10], q[9];
t q[9];
cx q[5], q[9];
t q[5];
tdg q[9];
cx q[10], q[9];
cx q[5], q[9];
cx q[9], q[5];
cx q[5], q[9];
cx q[10], q[9];
t q[10];
u2(0,3.92699081698724) q[5];
tdg q[9];
cx q[10], q[9];
h q[9];
cx q[5], q[9];
tdg q[9];
cx q[10], q[9];
t q[9];
cx q[5], q[9];
t q[5];
tdg q[9];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
u2(0,3.92699081698724) q[10];
cx q[9], q[5];
tdg q[5];
t q[9];
cx q[9], q[5];
cx q[20], q[21];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
h q[21];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[7], q[16];
cx q[16], q[7];
cx q[7], q[16];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
h q[24];
cx q[18], q[27];
cx q[27], q[18];
cx q[18], q[27];
cx q[27], q[26];
cx q[26], q[27];
cx q[27], q[26];
cx q[25], q[26];
cx q[26], q[25];
cx q[25], q[26];
cx q[24], q[25];
cx q[25], q[24];
cx q[24], q[25];
cx q[24], q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
h q[22];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
tdg q[22];
cx q[23], q[17];
cx q[17], q[23];
cx q[11], q[17];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[11], q[17];
t q[17];
tdg q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[23], q[17];
tdg q[17];
cx q[11], q[17];
t q[23];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[11], q[17];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
t q[10];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[12], q[13];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
h q[14];
cx q[15], q[14];
tdg q[14];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
tdg q[17];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
rz(7.06858347057703) q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[21], q[22];
tdg q[22];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[4], q[6];
t q[6];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[14], q[13];
tdg q[13];
t q[14];
cx q[4], q[6];
cx q[6], q[4];
cx q[4], q[6];
cx q[13], q[6];
cx q[3], q[4];
cx q[4], q[3];
cx q[3], q[4];
cx q[6], q[13];
cx q[13], q[14];
t q[13];
tdg q[14];
cx q[13], q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
x q[15];
rz(7.06858347057703) q[6];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[14], q[13];
tdg q[13];
cx q[6], q[13];
t q[13];
cx q[14], q[13];
tdg q[13];
cx q[13], q[6];
t q[14];
cx q[6], q[13];
cx q[13], q[14];
t q[13];
tdg q[14];
cx q[13], q[14];
h q[14];
cx q[15], q[14];
tdg q[14];
cx q[13], q[14];
t q[14];
cx q[15], q[14];
tdg q[14];
cx q[14], q[13];
cx q[13], q[14];
u2(0,3.92699081698724) q[13];
t q[15];
cx q[14], q[15];
t q[14];
tdg q[15];
cx q[14], q[15];
h q[15];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[13], q[14];
tdg q[14];
cx q[15], q[14];
t q[14];
cx q[13], q[14];
t q[13];
tdg q[14];
cx q[15], q[14];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
u2(0,3.92699081698724) q[13];
cx q[15], q[14];
tdg q[14];
t q[15];
cx q[15], q[14];
cx q[14], q[15];
cx q[15], q[14];
cx q[14], q[15];
u2(0,3.92699081698724) q[6];
cx q[13], q[6];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[10], q[9];
cx q[11], q[12];
cx q[11], q[17];
x q[12];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
h q[12];
cx q[14], q[13];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
x q[14];
cx q[17], q[11];
cx q[11], q[17];
cx q[17], q[23];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
t q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[23], q[22];
tdg q[22];
t q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[6], q[13];
tdg q[13];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[4], q[6];
t q[6];
cx q[13], q[6];
t q[13];
tdg q[6];
cx q[4], q[6];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
u2(0,3.92699081698724) q[13];
cx q[13], q[14];
cx q[14], q[13];
cx q[13], q[14];
cx q[4], q[6];
t q[4];
tdg q[6];
cx q[6], q[4];
cx q[4], q[6];
cx q[6], q[13];
x q[13];
cx q[6], q[13];
cx q[13], q[6];
cx q[6], q[13];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[17];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
t q[17];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[17], q[11];
cx q[11], q[17];
t q[11];
cx q[22], q[23];
cx q[17], q[23];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
t q[21];
cx q[23], q[17];
cx q[17], q[23];
tdg q[17];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[11], q[10];
cx q[10], q[11];
u2(0,3.92699081698724) q[10];
h q[17];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
h q[11];
cx q[23], q[22];
tdg q[22];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
t q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
t q[11];
cx q[22], q[21];
cx q[23], q[24];
cx q[24], q[23];
cx q[23], q[24];
cx q[23], q[17];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
tdg q[11];
tdg q[24];
cx q[23], q[24];
cx q[24], q[23];
cx q[23], q[24];
cx q[17], q[23];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[23], q[24];
cx q[24], q[23];
cx q[23], q[24];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[23], q[17];
t q[17];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[17], q[11];
tdg q[11];
t q[17];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[24], q[25];
tdg q[25];
cx q[24], q[25];
cx q[25], q[24];
cx q[24], q[25];
cx q[23], q[24];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[23], q[17];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[17], q[11];
tdg q[11];
t q[17];
cx q[17], q[11];
t q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
h q[22];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
t q[24];
cx q[25], q[24];
tdg q[24];
cx q[24], q[23];
cx q[23], q[24];
u2(0,3.92699081698724) q[23];
t q[25];
cx q[24], q[25];
t q[24];
tdg q[25];
cx q[24], q[25];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[8], q[7];
h q[7];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[9], q[8];
tdg q[8];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[10], q[9];
t q[9];
cx q[8], q[9];
t q[8];
tdg q[9];
cx q[10], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[10], q[9];
t q[10];
rz(7.06858347057703) q[8];
cx q[7], q[8];
tdg q[8];
tdg q[9];
cx q[10], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[10], q[9];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
t q[9];
cx q[8], q[9];
t q[8];
tdg q[9];
cx q[10], q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[10], q[9];
t q[10];
u2(0,3.92699081698724) q[8];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[7], q[16];
h q[16];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[21], q[20];
tdg q[20];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[23], q[17];
cx q[17], q[23];
cx q[7], q[16];
cx q[16], q[7];
cx q[7], q[16];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
tdg q[9];
cx q[10], q[9];
cx q[9], q[10];
cx q[10], q[9];
cx q[9], q[10];
cx q[11], q[10];
h q[11];
cx q[10], q[11];
tdg q[11];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[11], q[17];
t q[17];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[22], q[23];
t q[22];
tdg q[23];
cx q[9], q[10];
t q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[12], q[11];
tdg q[11];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[10], q[9];
cx q[11], q[17];
t q[12];
cx q[17], q[11];
cx q[11], q[17];
cx q[17], q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
t q[17];
rz(7.06858347057703) q[22];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[19], q[20];
tdg q[20];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
tdg q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[23], q[22];
t q[22];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[20], q[21];
t q[20];
tdg q[21];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[22], q[23];
cx q[23], q[22];
cx q[22], q[21];
tdg q[21];
t q[22];
cx q[22], q[21];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
u2(0,3.92699081698724) q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[9], q[10];
cx q[10], q[11];
cx q[11], q[10];
cx q[10], q[11];
cx q[11], q[12];
t q[11];
tdg q[12];
cx q[11], q[12];
cx q[13], q[12];
cx q[12], q[13];
cx q[13], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
u2(0,3.92699081698724) q[9];
cx q[9], q[8];
cx q[8], q[9];
cx q[9], q[8];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[8];
cx q[7], q[16];
cx q[16], q[7];
cx q[7], q[16];
cx q[16], q[19];
h q[16];
cx q[19], q[16];
tdg q[16];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[21], q[20];
t q[20];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[16], q[19];
t q[16];
tdg q[19];
cx q[19], q[20];
cx q[20], q[19];
cx q[19], q[20];
cx q[16], q[19];
cx q[19], q[16];
cx q[16], q[19];
cx q[21], q[20];
cx q[20], q[21];
cx q[21], q[20];
cx q[20], q[21];
cx q[20], q[19];
tdg q[19];
t q[20];
cx q[20], q[19];
u2(0,3.92699081698724) q[21];
cx q[21], q[22];
h q[21];
cx q[22], q[21];
tdg q[21];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
cx q[21], q[22];
cx q[22], q[21];
cx q[21], q[22];
cx q[23], q[17];
cx q[17], q[23];
cx q[11], q[17];
t q[17];
cx q[17], q[23];
cx q[23], q[17];
cx q[17], q[23];
cx q[11], q[17];
cx q[17], q[11];
cx q[11], q[17];
cx q[22], q[23];
t q[22];
tdg q[23];
cx q[17], q[23];
cx q[23], q[22];
cx q[22], q[23];
cx q[23], q[22];
cx q[17], q[23];
t q[17];
u2(0,3.92699081698724) q[22];
tdg q[23];
cx q[17], q[23];