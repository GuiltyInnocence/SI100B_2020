clc;clear all;close all;
im=double(imread('Image1.jpg'));
r=input("What's the radius???????");
o=input("What's the variance???????");
%normal distribution
nm=zeros(2*r+1,2*r+1);
for i=-r:r
    for j=-r:r
        nm(i+r+1,j+r+1)=exp(-(i*i+j*j)/(2*o*o))/(2*pi*o*o);
    end
end
res=imfilter(im,nm,'replicate');
imshow(uint8(res));