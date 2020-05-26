#include <stdio.h>
#include "fir.h"

int to_q15(double x)
{
    if(x < 0.0)
        return (int)(32768 * x - 0.5);

    return (int)(32767 * x + 0.5);
}

int fir(int sample, int *coeffs, int *sample_history, int coeffs_length)
{
    int output = sample*coeffs[0];

    for(int i=1;i<no_of_coeffs;i++)
    {
        output = output + (sample_history[no_of_coeffs-i-1]*coeffs[i]);
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

    int sample = 32767;
    int sample_history[no_of_coeffs-1];

	for(int i=0;i<no_of_coeffs-1;i++) sample_history[i]=0;

    for(int i=0; i<no_of_coeffs; i++)
    {
		int output;
		if(i==0) output = fir(sample, coeffs_q15, sample_history, no_of_coeffs);
        else output = fir(0, coeffs_q15, sample_history, no_of_coeffs);
        printf("Coeffs: %d \n", coeffs_q15[i]);
        printf("Output: %d \n", output);

		sample_history[i]=sample;
		if(i>0) sample_history[i-1] = 0;
    }
}

