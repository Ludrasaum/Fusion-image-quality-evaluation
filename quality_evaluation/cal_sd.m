function [sd] = cal_sd(f)
%
%This function is use to calculate the Standard Deviation of input image.
%


f = double(f);

[m,n] = size(f);

u = mean(mean(f));

temp2 = 0;

for i = 1:m
for j = 1:n

temp1 = (f(i,j) - u)^2;
temp2 = temp2 + temp1; 

end
end

temp3 = sqrt(temp2/(m*n));
sd = temp3;

end