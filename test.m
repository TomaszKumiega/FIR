[music, fs] = audioread('music.wav');
[tc,yc] = chirpGen();
[ts,ys] = sinGen();

music=to_q15(music);
yc=to_q15(yc);
ys=to_q15(ys);


header = '1651 9 5000 1 400 2';

%save audio to dat file
fid = fopen('audio.dat', 'w');
fprintf(fid, '%s\n', header);
fprintf(fid, '%d\n', music);
fclose(fid);

%save chirp signal to dat file
fid = fopen('chirp.dat', 'w');
fprintf(fid, '%s\n', header);
fprintf(fid, '%d\n', yc);
fclose(fid);

%save sin signal to dat file
fid = fopen('sin.dat', 'w');
fprintf(fid, '%s\n', header);
fprintf(fid, '%d\n', ys);
fclose(fid);