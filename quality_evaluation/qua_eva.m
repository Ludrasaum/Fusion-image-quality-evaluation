function qua_eva(f,a,b)
%%%%%%%%%%%%%%%%%%%%%%%
%                                                           %
%  This toolbox is made by Z.F.Huang    %
%                                                           %
%%%%%%%%%%%%%%%%%%%%%%%
%Input:
%           f : fused image
%           a : one of the source image 
%           b : another source image
%========================================
%The toolbox contains the following quality evaluation values 
%
%AG : Average Gradient
%
%EN : Entropy
%
%MI : Mutual Information
%
%SD : Standard Deviation
%
%PSNR : Peak Signal-to-Noise Ratio
%========================================
%
%Caution : 'big' denotes the bigger the better;
%               'small' denotes the smaller the better.
%
%========================================

ag = cal_ag(f);
en = cal_en(f);
sd = cal_sd(f);
mi = cal_mi(f,a,b);
psnr = cal_psnr(f,a,b);

temp1 = {'ag';'en';'sd';'mi';'psnr'};
temp2 = [ag;en;sd;mi;psnr];
temp3 = {'big';'big';'big';'big';'big'};

table(temp1,temp2,temp3);

end
