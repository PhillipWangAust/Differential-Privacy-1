function [ valuation ] = Valuation_Fun( x,beta,lambda,alpha,ref)
%VALUATION_FUN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵
if nargin == 3
    valuation = lambda * power(x,beta);
end
if nargin == 5
    if x > ref
        valuation = -lambda * power(x-ref,beta);
    else
        valuation = power(ref-x,alpha);
    end
end


