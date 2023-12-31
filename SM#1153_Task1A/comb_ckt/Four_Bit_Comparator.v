// SM : Task 1 A : Combinational Circuit
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.
This file is used to design 4 bit comparator.

Recommended Quartus Version : 19.1
The submitted project file must be 19.1 compatible as the evaluation will be done on Quartus Prime Lite 19.1.

Warning: The error due to compatibility will not be entertained.
			Do not make any changes to Test_Bench_Vector.txt file. Violating will result into Disqualification.
-------------------
*/

//4 bit comparator design
//Inputs  : A and B (4 bit)
//Outputs : A_Greater (A>B), Equal (A=B), B_Greater (A<B)

//////////////////DO NOT MAKE ANY CHANGES IN MODULE//////////////////
module Four_Bit_Comparator(
	input		[3:0]A,           //4-bit INPUT A
	input		[3:0]B,				//4-bit INPUT B				
	output	A_Greater,			//OUTPUT BIT A>B
	output	Equal,				//OUTPUT BIT A=B
	output	B_Greater			//OUTPUT BIT A<B
);

/*Hints
	1. Define wires.
	2. Instantiate Two_Bit_Comparator.v module and pass necessary signals.
		This needs to be done twice, first for lower two bits 
		and next for upper two bits.
	3. Output "Equal" of 4-bit comparator will be high if and only if:
		(Upper two bits of A = Upper two bits of B) AND (Lower two bits of A = Lower two bits of B). 
*/

////////////////////////WRITE YOUR CODE FROM HERE//////////////////// 
	
	wire p,q,r,s,t,u;
//	wire a_first[1:0],a_second[1:0],b_first[1:0],b_second[1:0];
//	a_first[0]=A[0];
//	a_first[1]=A[1];
//	a_second[0]=A[2];
//	a_second[1]=A[3];
//	b_first[0]=B[0];
//	b_first[1]=B[1];
//	b_second[0]=B[2];
//	b_second[1]=B[3];
	
	Two_Bit_Comparator t0 (.A(A[3:2]),.B(B[3:2]),.A_Greater(p),.Equal(q),.B_Greater(r));
	Two_Bit_Comparator t1 (.A(A[1:0]),.B(B[1:0]),.A_Greater(s),.Equal(t),.B_Greater(u));
	assign A_Greater=p&(s|t|u) | q&s ;
	assign Equal=q&t;
	assign B_Greater=q&u | r&(s|t|u);
	
	
	

////////////////////////YOUR CODE ENDS HERE//////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////