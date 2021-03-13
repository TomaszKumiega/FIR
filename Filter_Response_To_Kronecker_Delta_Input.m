coeff=coeff();

I=1:242;
I(1)=0;
x = double(kroneckerDelta(sym(I)));
y = FIR(coeff,x);       %odpowiedź filtru własnej implementacji na deltę kroneckera
y1= filter(coeff,1,x);   %odpowiedź filtru na deltę kroneckera przy urzyciu matlabowej funkcji

hold on; zoom on; grid on;
stem(coeff,'b');
plot(y,'r');
