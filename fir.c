#include <stdio.h>
#include "fir.h"

int to_q15(double x)
{
    return x*32768;
}

int fir(int sample, int *coeffs, int *sample_history, int coeffs_length)
{
    static int current_sample_delay=0;                                          //position of current sample in sample_history

    
    int *current_sample;
    current_sample = sample_history+current_sample_delay;                       //pointer to current sample position 
    *current_sample=sample;                                                     //add sample to the sample_history array

    int output =0;
    int k=0;

    for(int i=0;i<coeffs_length;i++)
    {
        if(i<=(current_sample_delay)) 
        {
            k=i;
            output += (int)(((*(current_sample-k)*(long)*(coeffs+i))+16384)>>15);   //FIR output y(x)=x(n-i)h(i)
        }
        else 
        {
            k=i-current_sample_delay-1;
            output += (int)(((*(current_sample+(coeffs_length-1-current_sample_delay-k))*(long)*(coeffs+i))+16384)>>15);   //FIR output y(x)=x(n-i)h(i)
        }
        
    }

    current_sample_delay+=1;
    
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

	for(int i=0;i<no_of_coeffs;i++) sample_history[i]=0;

    for(int i=0; i<no_of_coeffs; i++)
    {
		int output;

		if(i==0) output = fir(sample, coeffs_q15, sample_history, no_of_coeffs);
        else output = fir(0, coeffs_q15, sample_history, no_of_coeffs);
        
        printf("Wynik: %d \n", coeffs_q15[i]-output);
    }
}

