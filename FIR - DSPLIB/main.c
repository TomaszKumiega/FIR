#include "stdio.h"
#include "usbstk5505.h"
#include "Dsplib.h"
#include "fir.h"

DATA coeffs_q15[242];
DATA sample_history_input[244];
DATA sample[4500];

void main( void ) 
{
    int i;


    DATA output;

    for(i=0;i<no_of_coeffs+2;i++) sample_history_input[i]=0;

    for(i=0;i<4500;i++)
    {
        output=0;

        fir(&sample[i], coeffs_q15, &output, sample_history_input, 1, no_of_coeffs);

        printf("Wynik: %d\n", coeffs_q15[i]-output);

    }

}

