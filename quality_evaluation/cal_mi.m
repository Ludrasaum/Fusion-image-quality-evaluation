function [mi] = cal_mi(f,a,b)
%
%This function is use to calculate the Mutual Information of the method.
%

mi_af = cal_mi_xf(f,a);
mi_bf = cal_mi_xf(f,b);
mi = mi_af + mi_bf;

end