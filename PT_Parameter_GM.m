function [ Parameter_N,mean ] = PT_Parameter_GM( specification)
%PT_PARAMETER �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
ave = specification.ave;
sigma = specification.sigma;
probability = specification.probability;
lower = specification.lower;
upper = specification.upper;
N = specification.N;
len = length(ave);

mean = ave*probability';


parameter = zeros(N,len);


for i =1:len
    if sigma(i)==0
        parameter(:,i) = ones(N,1)*ave(i);
    else
        nd=makedist('normal','mu',ave(i),'sigma',sigma(i));
        td=truncate(nd,lower(i),upper(i));
        parameter(:,i) = random(td,N,1);
    end
end



Parameter_N = parameter(:,len);

if i~= 1
    Parameter_N = parameter(:,len);
    pro = rand(N,1);
    for i = 1:N
            for j = 1:len-1
                if pro(i)< sum(probability(1:j))
                    Parameter_N(i) = parameter(i,j);
                    break;
                end
            end
        
    end
end


end

