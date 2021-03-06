function b=bd2block(a,M,Lev,tanTheta)

N=size(a);  w=floor(N/M);  md=N-M*w; 

b=a;
%-----------------------------------------------------------------------------

H=zeros(1,Lev); W=H;
H(1)=w(1); W(1)=w(2);
for ia=1:Lev-1
   H(ia+1)=ceil(H(ia)/2);   W(ia+1)=ceil(W(ia)/2);
end
for ia=Lev:-1:1
   b(1:H(ia),1:W(ia))=LowHigh2block(b(1:H(ia),1:W(ia)));
   b(1:H(ia),1:W(ia))=CFP2bdInv(b(1:H(ia),1:W(ia)),tanTheta);
end


a=b;
%for rows:  ----------------------------------------------------------------------
n=N(1); m=md(1); ww=w(1);
b(1:m,:)=a((M-m)*ww+1:(ww+1):n,:);
p=zeros(1,M);  p(M-m+1:M)=p(M-m+1:M)+[1:m];
for ia=1:M
   b(ia+m:M:n,:)=a((ia-1)*ww+1+p(ia):ia*ww+p(ia),:);
end

%for columns:  -------------------------------------------------------------------
a=b;
n=N(2); m=md(2); ww=w(2);
b(:,1:m)=a(:,(M-m)*ww+1:(ww+1):n);
p=zeros(1,M);  p(M-m+1:M)=p(M-m+1:M)+[1:m];
for ia=1:M
   b(:,ia+m:M:n)=a(:,(ia-1)*ww+1+p(ia):ia*ww+p(ia));
end
