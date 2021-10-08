function [ag] = cal_ag(f)
%
%This function is use to calculate the Average Gradient of input image.
%

f = double(f);

[m,n] = size(f);

arg = 0;



for i = 1:m-1
for j = 1:n-1

fx = (f(i,j) - f(i+1,j))^2;
fy = (f(i,j) - f(i,j+1))^2;

temp1 = (fx + fy)/2;
temp2 = sqrt(temp1);
arg = arg + temp2;

end
end

ag = arg/(m*n);
end