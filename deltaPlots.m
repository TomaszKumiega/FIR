I=1:242;
I(1)=0;
I=double(kroneckerDelta(sym(I))); %delta kroneckera jako input

coeff=coeff();
coeff=to_q15(coeff); %wspolczynniki w q15

y=filter(coeff,1,I);
y=y.';  %input filtrowany w matlabie

%os czestotliwosci
Fs=48000;
L=242;
f=Fs*(0:(L/2))/L;

%oś czasu
T=1/Fs;
tmax=T*L;
t=linspace(0,tmax,L);

%modul widma
ft = abs(fft(I)/L);   
ft = ft(1:L/2+1);

%importowanie outputu z implementacji
ImportDeltaC;       
ImportDeltaDSP;

deltaFilteredDSP = table2array(deltaFilteredDSP);
deltaFilteredC = table2array(deltaFilteredC);

%modul widma z wszystkich implementacji filtru
Cft = abs(fft(deltaFilteredC)/L);
Cft = Cft(1:L/2+1);
DSPft = abs(fft(deltaFilteredDSP)/L);
DSPft = DSPft(1:L/2+1);
Mft = abs(fft(y)/L);
Mft = Mft(1:L/2+1);

figure
grid on; zoom on; hold on;
subplot(3,3,1);
plot(t,I,'b');
title('Input(t)');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,2);
plot(f,ft,'m');
title('Modul widma danych wejsciowych');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');
subplot(3,3,3);
plot(t,deltaFilteredDSP,'k');
title('Output z implementacji DSPLIB');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,4);
plot(t,deltaFilteredC,'r');
title('Output z implementacji w C');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,5);
plot(t,deltaFilteredC-y,'m');
title('Output z implementacji w C - output z matlaba');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,6);
plot(t,deltaFilteredDSP-y,'m');
title('Output z implementacji w DSPLIB - output z matlaba');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,7);
plot(f,Cft,'k');
title('Modul widma wyjscia z implementacji w C');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');
subplot(3,3,8);
plot(f,DSPft,'b');
title('Modul widma wyjscia z implementacji DSPLIB');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');
subplot(3,3,9);
plot(f,Mft,'m');
title('Modul widma wyjscia z matlaba');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');

