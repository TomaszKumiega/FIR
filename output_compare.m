coeff=coeff();
n=242;

import_output;
y = table2array(output)./32768;

grid on; zoom on; hold on;

plot(y,'r');
stem(coeff,'b*');