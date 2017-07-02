%Input :- K
% K = int value that is the number of shares avaliable with user

%Output :- An image named 'output.png' that is made using given k shares
%          and is encrypted
function [] = kn_encrypt(k);
im1 = imread('share1.png');

[im_width, im_height, channels] = size(im1);
share = zeros(k,im_width,im_height,3);
final = zeros(im_width, im_height, 3);

for i = 1:k
    X = uigetfile('*.jpg;*.bmp;*.tiff;*.ppm;*.pgm;*.png','pick a jpg file');
    im = imread(X);
    for j = 1:im_width
        for l = 1:im_height
            share(i,j,l,1) = im(j,l,1);
            share(i,j,l,2) = im(j,l,2);
            share(i,j,l,3) = im(j,l,3);
        end;
    end;
end;

for i = 1:k
    for j = 1:im_width
        for l = 1:im_height
            final(j,l,1) = bitor(final(j,l,1),share(i,j,l,1));
            final(j,l,2) = bitor(final(j,l,2),share(i,j,l,2));
            final(j,l,3) = bitor(final(j,l,3),share(i,j,l,3));
        end;
    end;
end;

final = uint8(final);
imwrite(final, 'output.png', 'png');