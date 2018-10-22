%clear the work space and close all open figure windows
clear; clear all; close all;
hres = 256; vres = 256;
name = ['C:\Users\Alex\Pictures\Sigmedia06907.tif'];
%fin = fopen(name,'rb');

I = imread(name);
I = (rgb2gray(I));
figure; imshow(I);
sigma  = 2;
N = 21;
flag = "combined"; %performs seperable is flag isnt correct

tic;
for r = 1:1000
    J = gaussian_blur(I, sigma, N,flag);
end
toc;

figure; imshow(J/255);