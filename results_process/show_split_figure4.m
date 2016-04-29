function show_split_figure4(splitno,file_ffmpeg_x264,file_ffmpeg_x265,file_arc_x264_Q05,file_arc_x265_Q05)

rate = [20 18 16 14 12 10 8 6 4 2];
load(file_ffmpeg_x264);
split_PSNR_x264 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x264 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x264 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

load(file_ffmpeg_x265);
split_PSNR_x265 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x265 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x265 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

load(file_arc_x264_Q05);
split_PSNR_ARC_x264 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x264 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
% split_SSIM_ARC_x264 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];

load(file_arc_x265_Q05);
split_PSNR_ARC_x265 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x265 = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];

figure(1);
plot(rate,split_PSNR_x264,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_PSNR_x265,'-rs','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PSNR_ARC_x264,'-.bo','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PSNR_ARC_x265,'-.bs','LineWidth', 2, 'MarkerSize',12);
xlabel('±àÂëÂëÂÊ£¨Mbps£©','FontSize',16);
ylabel('PSNR(dB)','FontSize',16);
title(splitno,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-x264-Q05','ARC-x265-Q05');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 60]);
set(gca,'XTick',[0:2:20],'FontSize',14);
set(gca,'YTick',[0:3:60],'FontSize',14);
grid on;

figure(2);
plot(rate,split_PLLP_x264,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_PLLP_x265,'-rs','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PLLP_ARC_x264,'-.bo','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PLLP_ARC_x265,'-.bs','LineWidth', 2, 'MarkerSize',12);
xlabel('±àÂëÂëÂÊ£¨Mbps£©','FontSize',16);
ylabel('PLLP[0-1]-ÎÞËðÏñËØ±È','FontSize',16);
title(splitno,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-x264-Q05','ARC-x265-Q05');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 0.5]);
set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;

figure(3);
plot(rate,split_SSIM_x264,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_SSIM_x265,'-rs','LineWidth', 2, 'MarkerSize',12);
xlabel('±àÂëÂëÂÊ£¨Mbps£©','FontSize',16);
ylabel('SSIM[0-1]','FontSize',16);
title(splitno,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 1.2]);
set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;
