function [ res ] = fun( N,W )
%FUN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
k = 1.109;
l = 0.0039;
M = 1.1261;
epsilon = 0.05;

res = k*M/l/N/W/power(1-M*epsilon/W,2) - k*l*N*M/W/power(1+l*N*(1-M*epsilon/W),2);

end

