[t,I]= sinGen();

coeff=coeff();

y=filter(coeff,1,I);
y=y.';
Fs=48000;
L=length(I);
f = Fs*(0:(L/2))/L;
ft = abs(fft(I));   %modul widma
ft = ft(1:L/2+1);

%importowanie outputu z implementacji
ImportSinusesC;       
ImportSinusesDSP;

sinFilteredDSP = table2array(sinFIlteredDSP);
sinFilteredC = table2array(sinFilteredC);
%modul widma z wszystkich implementacji filtru
Cft = abs(fft(sinFilteredC));
Cft = Cft(1:L/2+1);

Dft = abs(fft(sinFilteredDSP));
Dft = Dft(1:L/2+1);

Mft = abs(fft(y));
Mft = Mft(1:L/2+1);

sinFilteredDSP = sinFilteredDSP./32768;
sinFilteredC = sinFilteredC./32768;

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
plot(t,sinFilteredDSP,'k');
title('Output z implementacji DSPLIB');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,4);
plot(t,sinFilteredC,'r');
title('Output z implementacji w C');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,5);
plot(t,sinFilteredC-y,'m');
title('Output z implementacji w C - output z matlaba');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,6);
plot(t,sinFilteredDSP-y,'m');
title('Output z implementacji w DSPLIB - output z matlaba');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,7);
plot(f,Cft,'k');
title('Modul widma wyjscia z implementacji w C');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');
subplot(3,3,8);
plot(f,Dft,'b');
title('Modul widma wyjscia z implementacji DSPLIB');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');
subplot(3,3,9);
plot(f,Mft,'m');
title('Modul widma wyjscia z matlaba');
xlabel('Czestotliwosc [Hz]');
ylabel('Amplituda');


