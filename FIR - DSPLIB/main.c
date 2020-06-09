#include "stdio.h"
#include "usbstk5505.h"
#include "Dsplib.h"
#include "fir.h"

int to_q15(double x)
{
    return x*32768;
}

void main( void ) 
{
    DATA coeffs_q15[242];

    int i;

    for(i=0; i<no_of_coeffs; i++)
    {
        coeffs_q15[i] = to_q15(coeffs[i]);
    }

    DATA sample = 32767;
    DATA sample_history[242];

    for(i=0;i<no_of_coeffs;i++) sample_history[i]=0;

    DATA output;

    for(i=0;i<no_of_coeffs;i++)
    {
        output=0;

        if(i==0) fir(&sample, coeffs_q15, &output, sample_history, 1, no_of_coeffs);
        else fir(0, coeffs_q15, &output, sample_history, 1, no_of_coeffs);

        printf("Wynik: %d\n", coeffs_q15[i]-output);

    }

}

