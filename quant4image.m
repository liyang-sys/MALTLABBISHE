function [binq,cf0,sn]=quant4image(sub,n,delta0)

N=size(sub);
if N(1)==N(2)
   len=numel(sub);  sb=zeros(1,len);
   for ia=1:len
      sb(ia)=sub(n(1,ia),n(2,ia));
   end
else
   len3=N(1)*N(1); len=len3+len3+len3; sb=zeros(1,len);
   pb=0;
   for ib=1:3
      ssub = sub(:, (ib-1)*N(1)+1 : ib*N(1) );
      for ia=1:len3
         pb=pb+1;
         sb(pb)=ssub(n(1,ia),n(2,ia));
      end
   end
end
[qcf,binq,qctr]=quant4image_sub(sb,delta0); %qctr %qctr=0 corresponds to "quantEVEN.m"

if binq(1)>0
   if qctr==1
      sn=zeros(1,len);
      cf0=abs(qcf);
      lensn=0;
      for ia=1:len
         if qcf(ia)>0
            lensn=lensn+1;
            sn(lensn)=1;
         elseif qcf(ia)<0
            lensn=lensn+1;
         end
      end
      sn=sn(1:lensn);
   else
      cf0=abs(qcf)-1;
      sn=sign(1+sign(qcf));
   end   
else
   cf0=0; sn=0;
end
