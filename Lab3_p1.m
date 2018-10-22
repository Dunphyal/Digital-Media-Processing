%clear the work space and close all open figure windows
clear; clear all; close all;
hres = 256; vres = 256;
name = ['C:\Users\Alex\Pictures\Image25.png'];
%fin = fopen(name,'rb');
Q_step = 5;

I = imread(name);

I_Quantized = Q_step*round(I/Q_step);
E=entropy(I_Quantized);
entropy1 = calcEntropy(I);
entropy = calcEntropy(I_Quantized);
MSE = calcMSE(I_Quantized,I);

disp(MSE);
%disp(entropy1);
%disp(entropy);
%disp(E);
imshow(I_Quantized);
