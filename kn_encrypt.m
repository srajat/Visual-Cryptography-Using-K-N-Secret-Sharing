%Input :- k,n,im
% K = int value of K selected by user
% N = int value of N selected by user
% im = input image (use .png format only)

%Output :- n different images that are saved as share1.png, share2.png, etc..
function [] = kn_encrypt(k,n,im)
[im_width, im_height, channel] = size(im);

recons = n - k + 1;
img_share = uint8(zeros(n, im_width, im_height, channel*8));

for i = 1:im_width
    for j = 1:im_height
        PIX = [de2bi(im(i,j,1),8,'left-msb'), de2bi(im(i,j,2),8,'left-msb'), de2bi(im(i,j,3),8,'left-msb')];
        for k = 1:24
            if(PIX(k) == 1)
                temp = randomPlace(n,recons);
                for l = 1:recons                 
                    img_share(temp(l),i,j,k) = 1;    
                end;
            end;
        end;
    end;
end;

for i = 1:n
    red_share = pixToRGB(squeeze(img_share(i,:,:,1:8)),im_width,im_height);
    green_share = pixToRGB(squeeze(img_share(i,:,:,9:16)),im_width,im_height);
    blue_share = pixToRGB(squeeze(img_share(i,:,:,17:24)),im_width,im_height);
    
    ith_share = cat(3,red_share, green_share, blue_share);
    ith_share = uint8(ith_share);
    imwrite(ith_share, strcat('share',num2str(i),'.png'),'png');
end;