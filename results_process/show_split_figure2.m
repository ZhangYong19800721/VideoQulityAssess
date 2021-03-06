function show_split_figure2(splitno)

rate = [20 18 16 14 12 10 8 6 4 2];

file1 = strcat(strcat('../VideoQualityAssess_x264/result/',splitno),'_x264_result.mat');
file2 = strcat(strcat('../VideoQualityAssess_x265/result/',splitno),'_x265_result.mat');

load(file1);
split_PSNR_x264 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x264 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x264 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

clear PSNR20000K;
clear PSNR18000K;
clear PSNR16000K; 
clear PSNR14000K; 
clear PSNR12000K; 
clear PSNR10000K; 
clear PSNR08000K; 
clear PSNR06000K;
clear PSNR04000K;
clear PSNR02000K;

clear PSNRf20000K;
clear PSNRf18000K;
clear PSNRf16000K; 
clear PSNRf14000K; 
clear PSNRf12000K; 
clear PSNRf10000K; 
clear PSNRf08000K; 
clear PSNRf06000K;
clear PSNRf04000K;
clear PSNRf02000K;

clear PLLP20000K;
clear PLLP18000K;
clear PLLP16000K; 
clear PLLP14000K; 
clear PLLP12000K; 
clear PLLP10000K; 
clear PLLP08000K; 
clear PLLP06000K;
clear PLLP04000K;
clear PLLP02000K;

clear PLLPf20000K;
clear PLLPf18000K;
clear PLLPf16000K; 
clear PLLPf14000K; 
clear PLLPf12000K; 
clear PLLPf10000K; 
clear PLLPf08000K; 
clear PLLPf06000K;
clear PLLPf04000K;
clear PLLPf02000K;

clear SSIM20000K;
clear SSIM18000K;
clear SSIM16000K; 
clear SSIM14000K; 
clear SSIM12000K; 
clear SSIM10000K; 
clear SSIM08000K; 
clear SSIM06000K;
clear SSIM04000K;
clear SSIM02000K;

clear SSIMf20000K;
clear SSIMf18000K;
clear SSIMf16000K; 
clear SSIMf14000K; 
clear SSIMf12000K; 
clear SSIMf10000K; 
clear SSIMf08000K; 
clear SSIMf06000K;
clear SSIMf04000K;
clear SSIMf02000K;

load(file2);
split_PSNR_x265 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x265 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x265 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

clear PSNR20000K;
clear PSNR18000K;
clear PSNR16000K; 
clear PSNR14000K; 
clear PSNR12000K; 
clear PSNR10000K; 
clear PSNR08000K; 
clear PSNR06000K;
clear PSNR04000K;
clear PSNR02000K;

clear PSNRf20000K;
clear PSNRf18000K;
clear PSNRf16000K; 
clear PSNRf14000K; 
clear PSNRf12000K; 
clear PSNRf10000K; 
clear PSNRf08000K; 
clear PSNRf06000K;
clear PSNRf04000K;
clear PSNRf02000K;

clear PLLP20000K;
clear PLLP18000K;
clear PLLP16000K; 
clear PLLP14000K; 
clear PLLP12000K; 
clear PLLP10000K; 
clear PLLP08000K; 
clear PLLP06000K;
clear PLLP04000K;
clear PLLP02000K;

clear PLLPf20000K;
clear PLLPf18000K;
clear PLLPf16000K; 
clear PLLPf14000K; 
clear PLLPf12000K; 
clear PLLPf10000K; 
clear PLLPf08000K; 
clear PLLPf06000K;
clear PLLPf04000K;
clear PLLPf02000K;

clear SSIM20000K;
clear SSIM18000K;
clear SSIM16000K; 
clear SSIM14000K; 
clear SSIM12000K; 
clear SSIM10000K; 
clear SSIM08000K; 
clear SSIM06000K;
clear SSIM04000K;
clear SSIM02000K;

clear SSIMf20000K;
clear SSIMf18000K;
clear SSIMf16000K; 
clear SSIMf14000K; 
clear SSIMf12000K; 
clear SSIMf10000K; 
clear SSIMf08000K; 
clear SSIMf06000K;
clear SSIMf04000K;
clear SSIMf02000K;

figure(1);
plot(rate,split_PSNR_x264,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_PSNR_x265,'-rs','LineWidth', 2, 'MarkerSize',12);

xlabel('�������ʣ�Mbps��','FontSize',16);
ylabel('PSNR(dB)','FontSize',16);
title(splitno,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 60]);
set(gca,'XTick',[0:2:20],'FontSize',14);
set(gca,'YTick',[0:3:60],'FontSize',14);
grid on;

figure(2);
plot(rate,split_PLLP_x264,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_PLLP_x265,'-rs','LineWidth', 2, 'MarkerSize',12);
xlabel('�������ʣ�Mbps��','FontSize',16);
ylabel('PLLP[0-1]-�������ر�','FontSize',16);
title(splitno,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 0.5]);
set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;

figure(3);
plot(rate,split_SSIM_x264,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_SSIM_x265,'-rs','LineWidth', 2, 'MarkerSize',12);
xlabel('�������ʣ�Mbps��','FontSize',16);
ylabel('SSIM[0-1]','FontSize',16);
title(splitno,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 1.2]);
set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;
