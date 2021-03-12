coeff=coeff();
n=242;
fs=48000;

%odpowiedź impulsowa filtru
k=1:n;
k(1)=0;
x = double(kroneckerDelta(sym(k)));
y = filter(coeff,1,x);

[H,w]=freqz(y,n);   %funkcja transmitancji - H i dziedzina funkcji transmitancji - w
w=w*fs/(2*pi);      %zmiana jednostek dziedziny funkcji transmitancji na [Hz]
display(H);
Habs=abs(H);                %modul funkcji transmitancji / funkcja transmitancji w skali liniowej  
Hmax=max(Habs);
HdB=20*log10(Habs/Hmax);    %funkcja transmitancji w skali logarytmicznej

%wykresy
subplot(2,2,1)
plot(y,'r'); grid on;
title('Odpowiedz impulsowa')
 
subplot(2,2,2)
plot(w,Habs,'k'); grid on; zoom on;
xlabel('[Hz]');
title('|H(f)|-skala liniowa')
 
subplot(2,2,3);
plot(w,HdB);grid on;
xlabel('[Hz]');
ylabel('[dB]');
title('|H(f)| - skala logarytmiczna')