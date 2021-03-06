clc; clear all;


% %--------------------Mycode、f=0---------------------------
% x0=[885880,758042,638113,537250,447798,398141,334008,247214,122404,102470,89424,84723,57768,44841,37360,28611];
% x0=x0./(768*512);
% %--------------------Mycode、f=0.001---------------------------
% x0001=[1038250,891157,743235,622042,513465,455016,375898,290781,215725,154494,108868,74631,49954,31894];
% x0001=x0001./(768*512);
% %--------------------Mycode、f=0.01---------------------------
% x001=[940230,840912,702019,529466,367939,240619,183587,142133,115863,107943,64566,48770,39684,34092,30016,27067,24735];
% x001=x001./(768*512);
% %--------------------Mycode、f=0.03---------------------------
% x003=[1009676,646295,419565,316384,234761,179933,166647,87027,62351,49212,40316,34580,30657,27752];
% x003=x003./(768*512);
% %--------------------Mycode、f=0.1-------------------------
% x01=[922816,834067,653752,359955,192185,129534,97205,77678,63386,53784,47337,41885,37531];
% x01=x01./(768*512);
% %--------------------Mycode、f=0.2-------------------------
% x02=[954815,594231,336585,232669,174806,139360,114045,96735,84381,73408,64812,51725,40124,27849];
% x02=x02./(768*512);
% %--------------------Mycode、f=0.5-------------------------
% x05=[1028237,672346,390239,268525,204095,160407,71771,42188,28962,27346,25249];
% x05=x05./(768*512);
% %--------------------Mycode、f=0.8-------------------------
% x08=[902315,697997,563425,406937,315892,253712,120320,74207,51246,38200,24072,20107];
% x08=x08./(768*512);
% %--------------------Mycode、f=1---------------------------
% x1=[1019168,805773,663489,487596,385875,312510,154029,96165,67849,50941,39698,32222];
% x1=x1./(768*512);
% %--------------------LDR_PSNR-------------------------------
% ldr_psnr0=[40.30,38.07,35.74,34.63,32.82,31.85,30.39,28.15,23.70,22.87,22.25,21.85,20.18,18.81,18.11,17.46];
% ldr_psnr0001=[47.72,45.31,43.26,41.14,38.98,37.28,35.91,33.61,30.92,28.17,25.76,23.70,22.04,19.95];
% ldr_psnr001=[49.59,47.97,45.56,42.66,39.42,36.11,34.29,32.63,31.36,30.89,27.73,26.37,25.42,24.83,24.38,24.01,23.66];
% ldr_psnr003=[50.72,45.55,41.71,39.47,37.50,35.95,35.46,31.81,30.12,28.98,28.10,27.49,27.02,26.63];
% ldr_psnr01=[50.43,49.46,46.68,41.67,37.55,35.39,33.98,32.94,32.08,31.43,30.92,30.41,30.03];
% ldr_psnr02=[51.69,46.24,41.51,39.09,37.45,36.27,35.29,34.53,33.93,33.33,32.83,32.00,31.09,29.95];
% ldr_psnr05=[53.11,47.72,42.86,40.28,38.65,37.36,33.78,31.88,30.68,30.51,30.30];
% ldr_psnr08=[57.06,51.30,48.19,46.02,43.24,41.41,39.99,36.05,34.00,32.60,31.63,30.84,30.22,29.72];
% ldr_psnr1=[53.03,49.86,47.63,44.71,42.82,41.33,37.21,35.03,33.62,32.57,31.74,31.07];
% %--------------------HDR_PSNR-------------------------------
% hdr_psnr0=[100.78,98.39,95.92,93.70,91.38,89.95,87.84,84.29,75.91,73.74,72.03,71.37,66.47,63.61,61.56,58.96];
% hdr_psnr0001=[103.68,101.03,98.50,96.01,93.46,91.98,89.63,86.62,83.08,79.10,74.79,69.95,64.93,60.07];
% hdr_psnr001=[99.33,97.45,94.71,91.15,86.89,82.19,79.26,76.53,74.38,73.65,68.02,64.80,62.55,60.94,59.70,58.48,57.61];
% hdr_psnr003=[95.54,89.24,84.17,80.99,78.00,75.76,74.97,69.12,65.77,63.37,61.64,60.24,59.16,58.20];
% hdr_psnr01=[86.99,85.81,82.64,76.45,70.41,66.85,64.35,62.62,61.10,59.89,58.91,58.04,57.30];
% hdr_psnr02=[83.17,77.13,71.04,67.59,64.92,63.11,61.62,60.36,59.26,58.38,57.55,55.96,54.36,51.94];
% hdr_psnr05=[76.82,70.73,64.64,61.07,58.68,56.78,50.92,48.16,46.40,46.27,46.11];
% hdr_psnr08=[68.28,64.82,61.90,58.82,56.16,54.16,48.74,45.92,44.70,43.76,42.68,42.50];
% hdr_psnr1=[58.96,55.54,52.81,50.43,48.34,46.97,43.31,41.05,39.95,38.93,38.56,38.24];

% %-----------------ldr議psnr曳熟---------------------------------------
% fig=figure;
% plot(x0,ldr_psnr0,'-ro'); hold on; text(x0(1),ldr_psnr0(1),'f=0');
% plot(x0001,ldr_psnr0001,'-o'); hold on; text(x0001(1),ldr_psnr0001(1),'f=0.001');
% plot(x001,ldr_psnr001,'-go'); hold on; text(x001(1),ldr_psnr001(1),'f=0.01');
% plot(x003,ldr_psnr003,'-bo'); hold on; text(x003(1),ldr_psnr003(1),'f=0.03');
% plot(x01,ldr_psnr01,'-co'); hold on; text(x01(1),ldr_psnr01(1),'f=0.1');
% plot(x02,ldr_psnr02,'-mo'); hold on; text(x02(1),ldr_psnr02(1),'f=0.2');
% % plot(x05,ldr_psnr05,'g'); hold on; 
% % plot(x08,ldr_psnr08,'m'); hold on;
% plot(x1,ldr_psnr1,'-ko'); hold on; text(x1(1),ldr_psnr1(1),'f=1');
% grid on;
% % ldr=[25.33,22.13,20.25,18.33,24.73,25.14,18.92,19.18,17.37,19.24];
% % plot(x1,ldr,'-ro'); grid on; hold off;
% title('音揖f峙??ldr夕??psnr-bpp斤曳夕??圻夕葎memorial.o876??'); xlabel('bpp'); ylabel('LDR_PSNR');
% legend({'f=0','f=0.001', 'f=0.01','f=0.03','f=0.1', 'f=0.2','f=1'}, 'Location', 'SouthEast');

% %------------------------hdr議psnr曳熟------------------------------------
% fig2=figure;
% plot(x0,hdr_psnr0,'-ro'); hold on; text(x0(1),hdr_psnr0(1),'f=0');
% plot(x0001,hdr_psnr0001,'-o'); hold on; text(x0001(1),hdr_psnr0001(1),'f=0.001');
% plot(x001,hdr_psnr001,'-go');hold on; text(x001(1),hdr_psnr001(1),'f=0.01');
% plot(x003,hdr_psnr003,'-bo'); hold on; text(x003(1),hdr_psnr003(1),'f=0.03');
% plot(x01,hdr_psnr01,'-co'); hold on; text(x01(1),hdr_psnr01(1),'f=0.1');
% plot(x02,hdr_psnr02,'-mo'); hold on; text(x02(1),hdr_psnr02(1),'f=0.2');
% plot(x05,hdr_psnr05,'-o');hold on; text(x05(1),hdr_psnr05(1),'f=0.5');
% plot(x08,hdr_psnr08,'-o'); hold on; text(x08(1),hdr_psnr08(1),'f=0.8');
% plot(x1,hdr_psnr1,'-ko'); hold on; text(x1(1),hdr_psnr1(1),'f=1');
% grid on;
% % hdr=[70.62,65.61,62.67,60.60,59.43,58.28,57.21,56.35,55.55,54.87];
% % plot(x1,hdr,'-ro');grid on;hold off;
% % title('hdr夕??psnr-bpp斤曳夕("no clamp")'); xlabel('bpp'); ylabel('HDR_PSNR');
% title('音揖議f峙??hdr夕??psnr-bpp斤曳夕??圻夕葎memorial.o876??'); xlabel('bpp'); ylabel('HDR_PSNR');
% legend({'f=0', 'f=0.001','f=0.01','f=0.03','f=0.1','f=0.2','f=0.5','f=0.8','f=1'}, 'Location', 'SouthEast');

% %---------------------rgb、f=1------------------------------
ldrpsnr_1_rgb=[52.88,47.64,42.78,38.63,34.84,31.65,31.27];
hdrpsnr_1_rgb=[61.11,55.14,49.78,46.03,42.36,40.24,39.41];
bpp1_rgb=[2.5858,1.6709,0.9445,0.4855,0.2185,0.0907,0.0804];
% %--------------------rgb、f=0.2---------------------------
ldrpsnr_02_rgb=[46.06,41.54,37.59,34.02,33.00,32.19,30.07];
hdrpsnr_02_rgb=[77.62,71.63,65.82,59.94,58.25,56.93,52.85];
bpp02_rgb=[1.4497,0.8185,0.4242,0.1984,0.1535,0.1237,0.0642];

% %--------------------yuv、f=0.2---------------------------
ldrpsnr_02_yuv=[48.22,43.85,39.97,36.37,34.42,33.16,32.25];
hdrpsnr_02_yuv=[79.31,73.70,68.36,62.72,59.53,57.52,56.01];
bpp02_yuv=[1.2363,0.7029,0.3732,0.1830,0.1147,0.0830,0.0634];

% %--------------------yiq、f=0.2---------------------------
ldrpsnr_02_yiq=[48.25,43.89,39.96,36.45,34.49,33.23,32.30];
hdrpsnr_02_yiq=[79.31,73.53,68.20,62.87,59.84,57.86,56.45];
bpp02_yiq=[1.2191,0.6904,0.3658,0.1808,0.1123,0.0814,0.0628];

figure;
plot(bpp02_yuv,ldrpsnr_02_yuv,'-o');hold on; text(bpp02_yuv(1),ldrpsnr_02_yuv(1),'YUV');
plot(bpp02_yiq,ldrpsnr_02_yiq,'-o');hold on; text(bpp02_yiq(1),ldrpsnr_02_yiq(1),'YIQ');
plot(bpp02_rgb,ldrpsnr_02_rgb,'-o');hold on; text(bpp02_rgb(1),ldrpsnr_02_rgb(1),'RGB');
grid on;
title('f=0.2, LDR??圻夕葎memorial.o876??'); 
xlabel('bpp'); ylabel('LDR_PSNR');
legend({'YUV','YIQ','RGB'}, 'Location', 'SouthEast');

figure;
plot(bpp02_yuv,hdrpsnr_02_yuv,'-o');hold on; text(bpp02_yuv(1),hdrpsnr_02_yuv(1),'YUV');
plot(bpp02_yiq,hdrpsnr_02_yiq,'-o');hold on; text(bpp02_yiq(1),hdrpsnr_02_yiq(1),'YIQ');
plot(bpp02_rgb,hdrpsnr_02_rgb,'-o');hold on; text(bpp02_rgb(1),hdrpsnr_02_rgb(1),'RGB');
grid on;
title('f=0.2, HDR??圻夕葎memorial.o876??'); 
xlabel('bpp'); ylabel('HDR_PSNR');
legend({'YUV','YIQ','RGB'}, 'Location', 'SouthEast');

