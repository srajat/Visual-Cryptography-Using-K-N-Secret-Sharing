%Input :- PIX,w,h
% PIX = a 3D vector containing bit values of a plane
% w = width
% h = height

%Output :- a 2D vector with bits changed to int, this image corrosponds to
%          a graylevel plane
function [vec] = pixToRGB(PIX,w,h)
    vec = zeros(w,h);
    for i = 1:w
        for j = 1:h
            vec(i,j) = bi2de(squeeze(PIX(i,j,:))',2,'left-msb');
        end;
    end;
return;