#include <stdio.h>
#include "fir.h"

int to_q15(double x)
{
    return x*32768;
}

int fir(int sample, int *coeffs, int *sample_history, int coeffs_length)
{
    static int current_sample_delay=0;                                          //position of current sample in sample_history
    
    int *current_sample = sample_history+current_sample_delay;                  //set pointer to current sample position 
    *current_sample=sample;                                                     //add sample to the sample_history array

    int output =0;

    for(int i=0;i<coeffs_length;i++)
    {
        if(i<=current_sample_delay) current_sample = (sample_history+current_sample_delay-i); 
        else current_sample =sample_history+(coeffs_length-1)-(i-current_sample_delay);       

        output += (int)(((*current_sample*(long)*(coeffs+i))+16384)>>15);    
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

		output = (i==0) ?  fir(sample, coeffs_q15, sample_history, no_of_coeffs) : fir(0, coeffs_q15, sample_history, no_of_coeffs);
     
     
        printf("Wynik: %d \n", output);
    }
}

