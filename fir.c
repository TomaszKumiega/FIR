#include <stdio.h>
#include "fir.h"

double* fir(double input[],int inputLength);

void main()
{
	double input[242] = {32767};
	double *output;
	output = fir(input,242);

	for(int i=0; i<242; i++)
	{
	    printf("Coeffs: %f \n", coeffs[i]*32767);
		printf("Output: %f \n", *(output+i));
	}
	
}

double* fir(double input[],int inputLength)
{
	double outputValue=0;
	static double output[242];

	for(int k=0;k<inputLength;k++)
	{
		for(int i=0;i<no_of_coeffs;i++)
		{
			if(inputLength-k-i>-1) outputValue=outputValue+(input[inputLength-k-i-1]*coeffs[i]);
		}
		output[k]=outputValue;
		outputValue=0;
	}

	return output;
}
