function [psnr] = cal_psnr(f,a,b)
%
%This function is use to calculate the Pead Signal-to-Noise Ratio.
%


mse1 = cal_mse(f,a);
mse2 = cal_mse(f,b);
mse = (mse1 + mse2)/2;
r = max(max(f));
temp2 = (r^2)/mse;
pnsr = 10*log10(temp2);

end 