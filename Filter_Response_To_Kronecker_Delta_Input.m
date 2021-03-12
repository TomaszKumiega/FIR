coeff=coeff();

k=2:242;
k=[0,k];
x = double(kroneckerDelta(sym(k)));
y = FIR(coeff,x);       %odpowiedź filtru własnej implementacji na deltę kroneckera
y1= filter2(coeff,x);   %odpowiedź filtru na deltę kroneckera przy urzyciu matlabowej funkcji

hold on; zoom on; grid on;
stem(coeff,'b');
plot(y,'r');
