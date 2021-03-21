function a=transform_3d_cfp16_inv(a)

a=double(a);

nn=size(a); nn=nn(1)*nn(2)*nn(3); nn3=nn/3;
ru2=sqrt(2);

%-------------------------------------------------------------------------
M=16;
N=size(a);  w=floor(N(1:2)/M);
nbk=w; qbk=nbk/2;
tanTheta=1/8;
[tem,fL]=LFP2(zeros(1024,1024),M); 
for ia=1:12
   a(1:qbk(1),1:qbk(2),ia)=LowHigh2block(a(1:qbk(1),1:qbk(2),ia));
   a(1:qbk(1),1:qbk(2),ia)=CFP2bandInv(a(1:qbk(1),1:qbk(2),ia),tanTheta);
end
for ia=1:96
   ia
   a(:,:,ia)=band2block_4lev(a(:,:,ia),M,tanTheta);   a(:,:,ia)=LFP2Inv(a(:,:,ia),M,fL);
end

a=transform_time_domain_inv(a);
a=single(a);
