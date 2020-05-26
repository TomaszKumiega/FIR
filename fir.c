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
    int output = 0;

    for(int i=0;i<no_of_coeffs;i++)
    {
        if(no_of_coeffs-i>-1) {
            output = output + (sample_history[no_of_coeffs-i-1]*coeffs[i]);
        }
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
    int sample_history[no_of_coeffs];

    for(int i=0; i<no_of_coeffs; i++)
    {
        int output = fir(sample, coeffs_q15, sample_history, no_of_coeffs);
        printf("Coeffs: %d \n", coeffs_q15[i]);
        printf("Output: %d \n", output);
    }
}

