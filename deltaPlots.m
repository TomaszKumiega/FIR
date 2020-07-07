I=1:242;
I(1)=0;
I=double(kroneckerDelta(sym(I))); %delta kroneckera jako input

coeff=[-6.875475350454e-006,-8.817704749919e-006,-8.748117386016e-006,-5.724146095245e-006,5.475671645605e-007,9.39856871039e-006,1.910314788132e-005,2.708622312293e-005,3.044879620672e-005,2.673331987984e-005,1.476244978811e-005,-4.674740691691e-006,-2.852191760184e-005,-5.17149157768e-005,-6.805718761441e-005,-7.160807547918e-005, -5.831836384616e-005,-2.752571741747e-005,1.71180369334e-005,6.764936626288e-005,0.000112911599127, 0.000140719121689,0.0001407115682606,0.0001072986928029,4.196488658276e-005,-4.576454315026e-005,-0.0001391763488099,-0.0002171473485124,-0.000258489421734,-0.0002470541663938,-0.0001764703072693,-5.329695700219e-005, 0.0001024273293046,0.0002597819667718,0.0003825681590894,0.0004370300736223,0.000400162314727,0.0002667091094189,5.300255632018e-005,-0.0002037198072167,-0.0004509917229707,-0.0006311437271332,-0.0006939170921574,-0.0006090616690426,-0.0003759751517491,-2.775372432118e-005,0.0003720057494413,0.0007398314938852,0.0009889054891164, 0.001048413919713,0.0008816122574722,0.0004983033434484,-4.179449592777e-005,-0.0006366297533867,-0.001159891916704,-0.001486665673203,-0.00152169418083,-0.001224132203082,-0.0006227945588311,0.0001825895246263,0.001035917851976, 0.001753473037434,  0.00216194023094,  0.00213812310948,0.001641631670217,0.0007324994014579,-0.0004317501072498,-0.001621018281565,-0.002576189826272,-0.003063505630697,-0.002928744395844,-0.002139177478691,-0.0008028121089116,0.0008415348340973, 0.002463952070753, 0.003707036594874,0.004261659242601, 0.003939393811014, 0.002725400530449,0.0007983403928837,-0.001490122527315,-0.003675525646313,-0.005271089123655, -0.00587159318749,-0.005249326262592,-0.003420563430158,-0.0006654588002179, 0.002507259546811, 0.005448300276104, 0.007494494129912, 0.008110577970382, 0.007017152044205,0.004276215790216,0.0003120988717471,-0.004142754606126,-0.008172834474325,-0.01085590191307, -0.01145860514667,-0.009612455438507,-0.005431756326984,0.0004565201200587, 0.006985729604369,  0.01282082950083,  0.01660327865884,0.01722816581544,  0.01410228442792, 0.007331260402385,-0.002206765856048,-0.01292518394388, -0.02273089167002, -0.02933874265041, -0.03065051178118,-0.02513552769949, -0.01214597045608, 0.007892306516484,   0.0334536427764,0.06206438898394,   0.0906156065605,   0.1157912579778,   0.1345453527828,0.1445515077345,   0.1445515077345,   0.1345453527828,   0.1157912579778,0.0906156065605,  0.06206438898394,   0.0334536427764, 0.007892306516484,-0.01214597045608, -0.02513552769949, -0.03065051178118, -0.02933874265041,-0.02273089167002, -0.01292518394388,-0.002206765856048, 0.007331260402385,0.01410228442792,  0.01722816581544,  0.01660327865884,  0.01282082950083,0.006985729604369,0.0004565201200587,-0.005431756326984,-0.009612455438507,-0.01145860514667, -0.01085590191307,-0.008172834474325,-0.004142754606126,0.0003120988717471, 0.004276215790216, 0.007017152044205, 0.008110577970382,0.007494494129912, 0.005448300276104, 0.002507259546811,-0.0006654588002179,-0.003420563430158,-0.005249326262592, -0.00587159318749,-0.005271089123655,-0.003675525646313,-0.001490122527315,0.0007983403928837, 0.002725400530449,0.003939393811014, 0.004261659242601, 0.003707036594874, 0.002463952070753,0.0008415348340973,-0.0008028121089116,-0.002139177478691,-0.002928744395844,-0.003063505630697,-0.002576189826272,-0.001621018281565,-0.0004317501072498,0.0007324994014579, 0.001641631670217,  0.00213812310948,  0.00216194023094,0.001753473037434, 0.001035917851976,0.0001825895246263,-0.0006227945588311, -0.001224132203082, -0.00152169418083,-0.001486665673203,-0.001159891916704,-0.0006366297533867,-4.179449592777e-005,0.0004983033434484,0.0008816122574722, 0.001048413919713,0.0009889054891164,0.0007398314938852,0.0003720057494413,-2.775372432118e-005,-0.0003759751517491,-0.0006090616690426,-0.0006939170921574,-0.0006311437271332,-0.0004509917229707,-0.0002037198072167,5.300255632018e-005,0.0002667091094189, 0.000400162314727,0.0004370300736223,0.0003825681590894,0.0002597819667718,0.0001024273293046,-5.329695700219e-005,-0.0001764703072693,-0.0002470541663938,-0.000258489421734,-0.0002171473485124,-0.0001391763488099,-4.576454315026e-005,4.196488658276e-005,0.0001072986928029,0.0001407115682606,0.000140719121689, 0.000112911599127,6.764936626288e-005,1.71180369334e-005,-2.752571741747e-005,-5.831836384616e-005,-7.160807547918e-005,-6.805718761441e-005,-5.17149157768e-005,-2.852191760184e-005,-4.674740691691e-006,1.476244978811e-005, 2.673331987984e-005,3.044879620672e-005,2.708622312293e-005,1.910314788132e-005, 9.39856871039e-006,5.475671645605e-007,-5.724146095245e-006,-8.748117386016e-006, -8.817704749919e-006,-6.875475350454e-006];
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

