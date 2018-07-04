clc; 
clear all; 
close all;

img = imread('img.jpg');
% img = rgb2gray(img);
[m, n, o] = size(img);

% initial values 
mu = 3.985;
chSeed = 0.85986;
lfSeed = '11001011';
%-------------------

[lfKey, chKey] = generateKeys(chSeed, mu, lfSeed, m, n, o);
fprintf('\nEncrypting Image ...\n');

% making a combination of keys for more Security
combKey = bitxor(chKey, lfKey, 'uint8');

% Encrypting Using Keys
chenc = bitxor(chKey, img, 'uint8');
lfenc = bitxor(lfKey, img, 'uint8');
comb = bitxor(combKey, img, 'uint8');

f1 = figure('name', 'original','NumberTitle','off');
imshow(img)

f2 = figure('name', 'encrypted by Chaotic','NumberTitle','off');
imshow(chenc);

f3 = figure('name', 'encrypted by LFSR','NumberTitle','off');
imshow(lfenc);

f4 = figure('name', 'encrypted by both', 'NumberTitle', 'off');
imshow(comb);
% imwrite(comb, 'ency.jpg', 'jpg');
