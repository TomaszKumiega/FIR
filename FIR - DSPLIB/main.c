#include "stdio.h"
#include "usbstk5505.h"
#include "Dsplib.h"
#include "fir.h"

DATA coeffs_q15[242];
DATA sample_history[244];


void main( void ) 
{

    int i;

    i=0;

    DATA sample;


    for(i=0;i<no_of_coeffs+2;i++) sample_history[i]=0;

    DATA output;

    for(i=0;i<no_of_coeffs;i++)
    {
        output=0;

        if(i==0) sample = 32767;
        else sample =0;

        fir(&sample, coeffs_q15, &output, sample_history, 1, no_of_coeffs);


        printf("Wynik: %d\n", coeffs_q15[i]-output);

    }

}

