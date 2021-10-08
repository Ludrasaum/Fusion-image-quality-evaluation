function [mi_sub] = cal_mi_xf(f,x)
%
%This sub function is use to calculate mutual information between 
%fused image and one of the source image.
%

f1 = x;
f2 = f;

f1 = double(f1);
f2 = double(f2);

[m,n] = size(f1);
count = m*n;
N = 256;

h = zeros(N,N);


for i = 1:m
for j = 1:n

h(f1(i,j)+1,f2(i,j)+1) = h(f1(i,j)+1,f2(i,j)+1) + 1;

end
end



sm1 = 0;

for i = 1:N
for j = 1:N

sm1 = sm1 + h(i,j);

end
end
h = h/sm1;




f1_marg = zeros(1,256);
f2_marg = zeros(1,256);
cont1 = 0;
cont2 = 0;

for i = 1:N
for j = 1:N
f1_marg(i) = f1_marg(i) + h(i,j);
end
end



for i = 1:N
cont1 = cont1 + f1_marg(i);
end



for i = 1:N
for j = 1:N
f2_marg(i) = f2_marg(i) + h(j,i);
end
end

for i = 1:N
cont2 = cont2 + f2_marg(i);
end

f1_marg = f1_marg/cont1;
f2_marg = f2_marg/cont2;

H_x = 0;
H_y = 0;
H_xy = 0;



for i = 1:N
if(f1_marg(i) ~= 0)
H_x = H_x + f1_marg(i)*log2(f1_marg(i));
end
end



for i = 1:N
if(f2_marg(i) ~= 0)
H_y = H_y + f2_marg(i)*log2(f2_marg(i));
end
end


for i = 1:N
for j = 1:N
if(h(i,j) ~= 0)
H_xy = H_xy + h(i,j)*log2(h(i,j));
end
end
end

mi_sub = abs(H_x + H_y - H_xy);
   
end

