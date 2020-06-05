#include <stdio.h>
#include "fir.h"
int overflow=0;

int to_q15(double x)
{
   	return x*32768;
}

int fir(int sample, int *coeffs, int *sample_history, int coeffs_length)
{
    int output = ((long)sample*coeffs[0])>>15;

    for(int i=1;i<no_of_coeffs;i++)
    {
        output += (sample_history[no_of_coeffs-i-1]*(long)coeffs[i])>>15;
    }

    return output;
}

int main()
{
    int coeffs_q15[no_of_coeffs]; 

    for(int i=0; i<no_of_coeffs; i++)
    {
        coeffs_q15[i] = to_q15(coeffs[i]);
    }

    int sample = 32768;					
    int sample_history[no_of_coeffs-2]; 

	for(int i=0;i<no_of_coeffs-2;i++) sample_history[i]=0;

    for(int i=0; i<no_of_coeffs; i++)
    {
		int output;

		if(i==0) output = fir(sample, coeffs_q15, sample_history, no_of_coeffs);
        else output = fir(0, coeffs_q15, sample_history, no_of_coeffs);
        
        printf("COEFF: %d \n", coeffs_q15[i]);
        printf("Wynik: %d \n", output);

        sample_history[no_of_coeffs-2-i]=sample;
		if(i>0) sample_history[no_of_coeffs-i-1] = 0;
    }
}

