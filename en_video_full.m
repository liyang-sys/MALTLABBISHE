function [bin,bin1,bin2,bitrate]=en_video_full(delta0,coef)

load H2ext

%======================================================================================================
Ldc=coef(:,:,2);  L5=coef(:,:,5);  L4=coef(:,:,9:10);  L3=coef(:,:,17:20);
L2c=coef(:,:,33:40);  L2b=coef(:,:,57:64);  L2a=coef(:,:,81:88);
%coding the middle part:   -------------------------------------------
bin=cell(1,7);
fprintf('L2 ====================================\n')
[bin{1},N2a]=en_coef3d_cell(L2a,delta0); 
fprintf('L2a bitrate =%7.3f ---------------------------------\n\n', N2a/numel(L2a) );
[bin{2},N2b]=en_coef3d_cell(L2b,delta0);
fprintf('L2b bitrate =%7.3f ---------------------------------\n\n', N2b/numel(L2b) );
[bin{3},N2c]=en_coef3d_cell(L2c,delta0);
fprintf('L2c bitrate =%7.3f ---------------------------------\n\n', N2c/numel(L2c) );

fprintf('L3 ====================================\n')
[bin{4},N3]=en_coef3d_cell(L3,delta0);
fprintf('L3 bitrate =%7.3f ---------------------------------\n\n', N3/numel(L3) );

fprintf('L4 ====================================\n')
[bin{5},N4]=en_coef3dB_cell(L4,delta0);
fprintf('L4 bitrate =%7.3f ---------------------------------\n\n', N4/numel(L4) );

fprintf('Ldc5 ====================================\n')
AC=1; [bin{6},N5]=en_coef3d_dc5B_cell(L5,delta0, AC);
fprintf('\nL5 bitrate =%7.3f ---------------------------------\n', N5/numel(L5) );
AC=0; [bin{7},Ndc]=en_coef3d_dc5B_cell(Ldc,delta0, AC);
fprintf('\nLdc bitrate =%7.3f ---------------------------------\n', Ndc/numel(Ldc) );
Nbit=zeros(1,3);
Nbit(2) = N2a +N2b +N2c +N3 +N4 +N5 +Ndc;
%======================================================================================================


Ldc=coef(:,:,2-1);  L5=coef(:,:,5-1);  L4=coef(:,:,[9:10]-2);  L3=coef(:,:,[17:20]-4);
L2c=coef(:,:,[33:40]-8);  L2b=coef(:,:,[57:64]-8);  L2a=coef(:,:,[81:88]-8);
%coding the middle part:   -------------------------------------------
bin1=cell(1,7);
fprintf('L2 ====================================\n')
[bin1{1},N2a]=en_coef3d_cell(L2a,delta0); 
fprintf('L2a bitrate =%7.3f ---------------------------------\n\n', N2a/numel(L2a) );
[bin1{2},N2b]=en_coef3d_cell(L2b,delta0);
fprintf('L2b bitrate =%7.3f ---------------------------------\n\n', N2b/numel(L2b) );
[bin1{3},N2c]=en_coef3d_cell(L2c,delta0);
fprintf('L2c bitrate =%7.3f ---------------------------------\n\n', N2c/numel(L2c) );

fprintf('L3 ====================================\n')
[bin1{4},N3]=en_coef3d_cell(L3,delta0);
fprintf('L3 bitrate =%7.3f ---------------------------------\n\n', N3/numel(L3) );

fprintf('L4 ====================================\n')
[bin1{5},N4]=en_coef3dB_cell(L4,delta0);
fprintf('L4 bitrate =%7.3f ---------------------------------\n\n', N4/numel(L4) );

fprintf('Ldc5 ====================================\n')
AC=1; [bin1{6},N5]=en_coef3d_dc5B_cell(L5,delta0, AC);
fprintf('\nL5 bitrate =%7.3f ---------------------------------\n', N5/numel(L5) );
AC=0; [bin1{7},Ndc]=en_coef3d_dc5B_cell(Ldc,delta0, AC);
fprintf('\nLdc bitrate =%7.3f ---------------------------------\n', Ndc/numel(Ldc) );

Nbit(1) = N2a +N2b +N2c +N3 +N4 +N5 +Ndc;
%======================================================================================================



%======================================================================================================
Ldc=coef(:,:,2+1);  L5=coef(:,:,5+1);  L4=coef(:,:,[9:10]+2);  L3=coef(:,:,[17:20]+4);
L2c=coef(:,:,[33:40]+8);  L2b=coef(:,:,[57:64]+8);  L2a=coef(:,:,[81:88]+8);
%coding the middle part:   -------------------------------------------
bin2=cell(1,7);
fprintf('L2 ====================================\n')
[bin2{1},N2a]=en_coef3d_cell(L2a,delta0); 
fprintf('L2a bitrate =%7.3f ---------------------------------\n\n', N2a/numel(L2a) );
[bin2{2},N2b]=en_coef3d_cell(L2b,delta0);
fprintf('L2b bitrate =%7.3f ---------------------------------\n\n', N2b/numel(L2b) );
[bin2{3},N2c]=en_coef3d_cell(L2c,delta0);
fprintf('L2c bitrate =%7.3f ---------------------------------\n\n', N2c/numel(L2c) );

fprintf('L3 ====================================\n')
[bin2{4},N3]=en_coef3d_cell(L3,delta0);
fprintf('L3 bitrate =%7.3f ---------------------------------\n\n', N3/numel(L3) );

fprintf('L4 ====================================\n')
[bin2{5},N4]=en_coef3dB_cell(L4,delta0);
fprintf('L4 bitrate =%7.3f ---------------------------------\n\n', N4/numel(L4) );

fprintf('Ldc5 ====================================\n')
AC=1; [bin2{6},N5]=en_coef3d_dc5B_cell(L5,delta0, AC);
fprintf('\nL5 bitrate =%7.3f ---------------------------------\n', N5/numel(L5) );
AC=0; [bin2{7},Ndc]=en_coef3d_dc5B_cell(Ldc,delta0, AC);
fprintf('\nLdc bitrate =%7.3f ---------------------------------\n', Ndc/numel(Ldc) );

Nbit(3) = N2a +N2b +N2c +N3 +N4 +N5 +Ndc;
%======================================================================================================

bitrate=Nbit/(numel(coef)/3);
