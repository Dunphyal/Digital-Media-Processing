clear; clear all; close all;
hres = 256; vres = 256;
name = ['C:\Users\Alex\Pictures\Sigmedia06907.tif'];
I = imread(name);
I = single(I);
Red = I(:,:,1);size(Red);
Green = I(:,:,2);size(Green);
Blue = I(:,:,3);size(Blue);

sigma  = 2.5;
N = 15;
flag = "incorrect";
f = 0.25;

J = (gaussian_blur(Red, sigma, N,flag))/255;
K = (gaussian_blur(Green, sigma, N,flag))/255;
L = (gaussian_blur(Blue, sigma, N,flag))/255;

I = I/255;
G = rgb2gray(I);
output = I+((G-J)*f)+((G-K)*f)+((G-L)*f);

imshow(I);
figure;imshow(output);