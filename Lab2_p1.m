%clear the work space and close all open figure windows
clear; clear all; close all;
hres = 256; vres = 256;
name = ['C:\Users\Alex\Pictures\Sigmedia06907.tif'];
%fin = fopen(name,'rb');

I = imread(name);
I = double(rgb2gray(I));
imshow(I/255);
I = I-55;
I = (I/145)*255;

if I >= 255
    I = 255;
end

if I <= 0
    I = 0;
end
figure; imshow(I/255);
