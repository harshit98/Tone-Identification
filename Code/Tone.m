clc;
clear all;
close all;

filename = 'test2.wav';
[voice, Fs] = audioread(filename);

% Fs is sampling frequency of audio file.
% fs is sampling frequency we're considering.

fs = 45000;
x = voice;
x = x';
x = x(1,:);
x = x';
    
% Read the first sample file.
y1 = audioread('one.wav');
y1 = y1';
y1 = y1(1,:);
y1 = y1';
    
% Correlation between sample file and test file
z1 = xcorr(x,y1);

% Maximum value where intensity of frequencies is high
m1 = max(z1);
l1 = length(z1);
t1 = -((l1-1)/2):1:((l1-1)/2);
t1 = t1';
figure;
plot(t1,z1); grid on;
title('Cross Correlation between Test File and First Sample');
    
% Read second sample file
y2 = audioread('two.wav');
y2 = y2';
y2 = y2(1,:);
y2 = y2';
z2 = xcorr(x,y2);
m2 = max(z2);
l2 = length(z2);
t2 = -((l2-1)/2):1:((l2-1)/2);
t2 = t2';
figure;
plot(t2,z2); grid on;
title('Cross Correlation between Test File and Second Sample');
    
% Read the third sample file
y3 = audioread('three.wav');
y3 = y3';
y3 = y3(1,:);
y3 = y3';
z3 = xcorr(x,y3);
m3 = max(z3);
l3 = length(z3);
t3 = -((l3-1)/2):1:((l3-1)/2);
t3 = t3';
figure;
plot(t3,z3); grid on;
title('Cross Correlation between Test File and Third Sample');

% Read forth sample file
y4 = audioread('four.wav');
y4 = y4';
y4 = y4(1,:);
y4 = y4';
z4 = xcorr(x,y4);
m4 = max(z4);
l4 = length(z4);
t4 = -((l4-1)/2):1:((l4-1)/2);
t4 = t4';
figure;
plot(t4,z4); grid on;
title('Cross Correlation between Test File and Fourth Sample');

% Read the fifth file
y5 = audioread('five.wav');
y5 = y5';
y5 = y5(1,:);
y5 = y5';
z5 = xcorr(x,y5);
m5 = max(z5);
l5 = length(z5);
t5 = -((l5-1)/2):1:((l5-1)/2);
t5 = t5';
figure;
plot(t5,z5); grid on;
title('Cross Correlation between Test File and Fifth Sample');

a = [m1 m2 m3 m4 m5];
m = max(a);
% h = audioread('allow.wav');

if m <= m1
    fprintf("Sound matched with file 1");
elseif m <= m2
    fprintf("Sound matched with file 2");
elseif m <= m3
    fprintf("Sound matched with file 3");
elseif m <= m4
    fprintf("Sound matched with file 4");
elseif m <= m5
    fprintf("Sound matched with file 5");
else
    fprintf("Failed");
end