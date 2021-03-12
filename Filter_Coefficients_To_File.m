coeff=coeff();
n=242;

coeffs_q15 = to_q15(coeff);
header = '1651 9 5000 1 400 2';

fid = fopen('coeffs.dat', 'w');
fprintf(fid, '%s\n', header);
fprintf(fid, '%d\n', coeffs_q15);
fclose(fid);
