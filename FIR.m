function [y]=FIR(coeff,x)

M=length(coeff);

n=length(x);
yt=0;
y=zeros(1,n);

for k=0:(n-1) 
    for i=0:(M-1)   
        if (n-k-i)>0
            yt=yt+(x(n-k-i)*coeff(i+1)); 
        end
    end
    y(k+1)=yt;
    yt=0;
end
end