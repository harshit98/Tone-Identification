a = audioinfo('singing.wav');
n = a.BitsPerSample;

[b, fs] = audioread('singing.wav');
win = 128;
k = win / 2;

nfft = win;
spectrogram(b, win, k, nfft,fs,'yaxis');

yt = get(gca, 'YTick');
set(gca, 'YTickLabel');