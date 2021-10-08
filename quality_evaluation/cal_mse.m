function [mse] = cal_mse(f,x)
%
%This function is use to calculate the Mean Squared Error.
%f is the fused image and x is one of the source image
%

f1 = f;
f2 = x;

f1 = double(f1);
f2 = double(f2);

[m,n] = size(f1);

ans = 0;

for i = 1:m
for j = 1:n

temp1 = (f2(i,j) - f1(i,j))^2;
ans = ans + temp1;

end
end

mse = ans/(m*n);

end
