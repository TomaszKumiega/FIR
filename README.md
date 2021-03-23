# FIR

We wszystkich plikach zaczynających się od "Import" trzeba podmienić <Ścieżka do folderu z plikami> na ścieżkę folderu ze wszystkimi plikami.\
W pliku coeff.m trzeba zamienić zwracane wartości na podane współczynniki filtru

## FIR-DSPLIB

Projekt code composer studio z implementacją z użyciem biblioteki DSPLIB

## FIR-C

Projekt code composer studio z własną implementacją filtru w C

## Pliki z danymi

pliki z C i DSP w nazwie - pliki z przefiltrowanymi danymi z implementacji C i DSP\
coeffs.dat - wygenerowany przez skrypt Filter_Coefficients_To_File plik ze współczynnikami filtru \
sin.dat - wygenerowany plik z wartościami sumy sinusów\
chirp.dat - wygenerowany plik z wartościami sygnału chirp\
audio.dat - wygenerowany plik z wartościami fragmentu utworu z music.wav

## Skrypty w matlabie

coeff.m - funkcja zwracająca podane współczynniki filtru\
Filter_Coefficients_To_File.m - skrypt zapisujący wartości współczynników filtru do pliku .dat

FIR.m - własna implementacja filtru FIR w matlabie\
Filter_Response_To_Kronecker_Delta_Input.m - skrypt wyświetlający odpowiedź filtru FIR z pliku FIR.m i z funkcji matlabowej filter2 na deltę kroneckera\
Filter_Transmittance_and_Impulse_Response.m - skrypt wyświetlający odpowiedź impulsową filtru oraz funkcję transmitancji dla podanych współczynników \
(dla podanych współczynników skrypt pokazuje czy filtr jest dolno/górno czy pasmowo przepustowy i jakie ma wartości graniczne)

Skrypty Import - skrypty importujące dane z plików do matlaba

audioPlots.m - skrypt wyświetlający wykresy przedstawiające wynik filtrowania sygnały pochodzącego z pliku music.wav\
chirpPlots.m - skrypt wyświetlający wykresy przedstawiające wynik filtrowania sygnałów chirp\
deltaPlots.m - skrypt wyświetlający wykresy przedstawiające wynik filtrowania delty kroneckera\
sinPlots.m - skrypt wyświetlający wykresy przedstawiające wynik filtrowania sumy sinusów

sinGen.m - funkcja generująca sumę 2 sinusów\
chirpGen.m - funkcja generująca sygnał chirp

Test_Signals_To_Files.m - skrypt zapisujący sygnały testowe do plików .dat

to_q15.m - funkcja zamieniająca wartości w tablicy na wartości w formacie Q15



