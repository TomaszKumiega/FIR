#include "stdio.h"

const int no_of_coeffs = 242;
int coeffs_q15[242];
int sample_history_input[242];

int fir(int sample, int *coeffs, int *sample_history, int coeffs_length)
{
    static int current_sample_delay=0;                                          //position of current sample in sample_history

    int *current_sample = sample_history+current_sample_delay;                  //set pointer to current sample position
    *current_sample=sample;                                                     //add sample to the sample_history array

    int output =0;
    int i=0;

    for(i=0;i<coeffs_length;i++)
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
    int sample =0;
    int i;

    for(i=0;i<no_of_coeffs;i++) sample_history_input[i]=0;

    int output;

    for(i=0; i<no_of_coeffs; i++)
    {
        output=0;

        if(i<1) sample = 32767;
        else sample = 0;

        output = fir(sample, coeffs_q15, sample_history_input, no_of_coeffs);

        output=output+1-1;
    }
}
