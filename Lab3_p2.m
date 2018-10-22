%clear the work space and close all open figure windows
clear; clear all; close all;
hres = 256; vres = 256;
name = ['C:\Users\Alex\Pictures\Image25.png'];
%fin = fopen(name,'rb');
% Q_step = 10;

I = imread(name);
G = I;
I = double(I);
figure;imshow(I/256);
Q_step = 10;
%imshow(I)
n=1;
X = calcHaarLevel1(I,n);
X = Q_step*round(X/(Q_step));
entropy = calcEntropy(X);
% MSE = calcMSE(X,I);
% disp(MSE);
disp(entropy);
Haar = calcInvHaar(X,n);
figure; imshow(Haar/256);