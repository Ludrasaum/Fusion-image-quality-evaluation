function [en] = cal_en(f)
%
%This function is use to calculate the Entropy of the input image.
%

f = imread('E:\1.tif');
f = double(f);

[m,n] = size(f);

zft = zeros(1,256);

pix_count = 0;

for i = 1:m
for j = 1:n
g = f(i,j) + 1;
zft(g) = zft(g) + 1;
end
end

for i = 1:256
pix_count = pix_count + zft(g);
end

temp = 0;
sum = 0;
en = 0;

for i = 1:256
p = zft(i)/pix_count;
if(p == 0)
temp = 0;
else
temp = -(p*log2(p));
end
sum = sum + temp;
end

en = sum;
end

