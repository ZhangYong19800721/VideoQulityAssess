clear all;
close all;

rate = [20 18 16 14 12 10 8 6 4 2];
load('split0012_x264_result.mat');
split0012_PSNR_x264 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split0012_PLLP_x264 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split0012_SSIM_x264 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

load('split0012_x265_result.mat');
split0012_PSNR_x265 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split0012_PLLP_x265 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split0012_SSIM_x265 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

figure(1);
plot(rate,split0012_PSNR_x264,'-ro','LineWidth', 2);
hold;
plot(rate,split0012_PSNR_x265,'-rs','LineWidth', 2);

xlabel('±àÂëÂëÂÊ£¨Mbps£©','FontSize',12);
ylabel('PSNR(dB)','FontSize',12);
title('split0012','FontSize',12);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',12);
axis([0 20 0 60]);
set(gca,'XTick',[0:0.5:20]);
set(gca,'YTick',[0:3:60]);
grid on;

figure(2);
plot(rate,split0012_PLLP_x264,'-ro','LineWidth', 2);
hold;
plot(rate,split0012_PLLP_x265,'-rs','LineWidth', 2);
xlabel('±àÂëÂëÂÊ£¨Mbps£©','FontSize',12);
ylabel('PLLP[0-1]-ÎÞËðÏñËØ±È','FontSize',12);
title('split0012','FontSize',12);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',12);
axis([0 20 0 0.5]);
set(gca,'XTick',[0:0.5:20]);
grid on;

figure(3);
plot(rate,split0012_SSIM_x264,'-ro','LineWidth', 2);
hold;
plot(rate,split0012_SSIM_x265,'-rs','LineWidth', 2);
xlabel('±àÂëÂëÂÊ£¨Mbps£©','FontSize',12);
ylabel('SSIM[0-1]','FontSize',12);
title('split0012','FontSize',12);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',12);
axis([0 20 0 1.2]);
set(gca,'XTick',[0:0.5:20]);
grid on;
