ImportAudio;
audio=table2array(audio);
I=audio(1:20000); %muzyka jako input
I=I./32768;
coeff=coeff();
y=filter(coeff,1,I);

Fs=48000;
L=20000;
f = Fs*(0:(L/2))/L;

ft = abs(fft(I)/L);   %modul widma
ft = ft(1:L/2+1);

T=1/Fs;
tmax=T*L;
t=linspace(0,tmax,L);

%importowanie outputu z implementacji
ImportAudioC;       
ImportAudioDSP;

audioFilteredDSP = table2array(audioFilteredDSP);
audioFilteredC = table2array(audioFilteredC);

%modul widma z wszystkich implementacji filtru
Cft = abs(fft(audioFilteredC)/L);
Cft = Cft(1:L/2+1);
DSPft = abs(fft(audioFilteredDSP)/L);
DSPft = DSPft(1:L/2+1);
Mft = abs(fft(y)/L);
Mft = Mft(1:L/2+1);

audioFilteredDSP = audioFilteredDSP./32768;
audioFilteredC = audioFilteredC./32768;

cm=audioFilteredC-y;
dm=audioFilteredDSP-y;

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
plot(t,audioFilteredDSP,'k');
title('Output z implementacji DSPLIB');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,4);
plot(t,audioFilteredC,'r');
title('Output z implementacji w C');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,5);
plot(t,cm,'m');
title('Output z implementacji w C - output z matlaba');
xlabel('Czas [s]');
ylabel('Amplituda');
subplot(3,3,6);
plot(t,dm,'m');
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

