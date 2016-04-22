clear all;
close all;

rate = [20 18 16 14 12 10 9 8 7 6 5 4.5 4 3.5 3 2.5 2 1.5 1 0.5];
load('episode003_result_x264_part1.mat');
load('episode003_result_x264_part2.mat');
load('episode003_result_x264_part3.mat');
load('episode003_result_x264_part4.mat');
episode003_PSNR_x264 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR09000K PSNR08000K PSNR07000K PSNR06000K PSNR05000K PSNR04500K PSNR04000K PSNR03500K PSNR03000K PSNR02500K PSNR02000K PSNR01500K PSNR01000K PSNR00500K];
episode003_PLLP_x264 = [Q20000K Q18000K Q16000K Q14000K Q12000K Q10000K Q09000K Q08000K Q07000K Q06000K Q05000K Q04500K Q04000K Q03500K Q03000K Q02500K Q02000K Q01500K Q01000K Q00500K];
episode003_SSIM_x264 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM09000K SSIM08000K SSIM07000K SSIM06000K SSIM05000K SSIM04500K SSIM04000K SSIM03500K SSIM03000K SSIM02500K SSIM02000K SSIM01500K SSIM01000K SSIM00500K];

load('episode003_result_x265_part1.mat');
load('episode003_result_x265_part2.mat');
load('episode003_result_x265_part3.mat');
load('episode003_result_x265_part4.mat');
episode003_PSNR_x265 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR09000K PSNR08000K PSNR07000K PSNR06000K PSNR05000K PSNR04500K PSNR04000K PSNR03500K PSNR03000K PSNR02500K PSNR02000K PSNR01500K PSNR01000K PSNR00500K];
episode003_PLLP_x265 = [Q20000K Q18000K Q16000K Q14000K Q12000K Q10000K Q09000K Q08000K Q07000K Q06000K Q05000K Q04500K Q04000K Q03500K Q03000K Q02500K Q02000K Q01500K Q01000K Q00500K];
episode003_SSIM_x265 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM09000K SSIM08000K SSIM07000K SSIM06000K SSIM05000K SSIM04500K SSIM04000K SSIM03500K SSIM03000K SSIM02500K SSIM02000K SSIM01500K SSIM01000K SSIM00500K];

load('episode003_result_arc_h264.mat');
arc_rate = [20 18 16 14 12 10 8 6 4 2 1];
episode003_PSNR_arc_h264 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K PSNR01000K];
episode003_PLLP_arc_h264 = [Q20000K Q18000K Q16000K Q14000K Q12000K Q10000K Q08000K Q06000K Q04000K Q02000K Q01000K];
episode003_SSIM_arc_h264 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K SSIM01000K];

load('episode003_result_arc_h265.mat');
arc_rate = [20 18 16 14 12 10 8 6 4 2 1];
episode003_PSNR_arc_h265 = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K PSNR01000K];
episode003_PLLP_arc_h265 = [Q20000K Q18000K Q16000K Q14000K Q12000K Q10000K Q08000K Q06000K Q04000K Q02000K Q01000K];
episode003_SSIM_arc_h265 = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K SSIM01000K];

figure(1);
plot(rate,episode003_PSNR_x264,'-ro','LineWidth', 2);
hold;
plot(rate,episode003_PSNR_x265,'-rs','LineWidth', 2);
plot(arc_rate,episode003_PSNR_arc_h264,'-.bo','LineWidth', 2);
plot(arc_rate,episode003_PSNR_arc_h265,'-.bs','LineWidth', 2);
xlabel('�������ʣ�Mbps��','FontSize',12);
ylabel('PSNR(dB)','FontSize',12);
title('episode003','FontSize',12);
% text(arc_rate(1),episode003_PSNR_arc_h265(1),'\leftarrow ��Ƶ�д��ڻ�������','HorizontalAlignment','left');
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-H264','ARC-H265');
set(hleg1,'Location','SouthEast','FontSize',12);
axis([0 20 0 60]);
set(gca,'XTick',[0:0.5:20]);
set(gca,'YTick',[0:3:60]);
grid on;

figure(2);
plot(rate,episode003_PLLP_x264,'-ro','LineWidth', 2);
hold;
plot(rate,episode003_PLLP_x265,'-rs','LineWidth', 2);
plot(arc_rate,episode003_PLLP_arc_h264,'-.bo','LineWidth', 2);
plot(arc_rate,episode003_PLLP_arc_h265,'-.bs','LineWidth', 2);
xlabel('�������ʣ�Mbps��','FontSize',12);
ylabel('PLLP[0-1]-�������ر�','FontSize',12);
title('episode003','FontSize',12);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-H264','ARC-H265','FontSize',12);
set(hleg1,'Location','SouthEast','FontSize',12);
axis([0 20 0 0.5]);
set(gca,'XTick',[0:0.5:20]);
grid on;

figure(3);
plot(rate,episode003_SSIM_x264,'-ro','LineWidth', 2);
hold;
plot(rate,episode003_SSIM_x265,'-rs','LineWidth', 2);
plot(arc_rate,episode003_SSIM_arc_h264,'-.bo','LineWidth', 2);
plot(arc_rate,episode003_SSIM_arc_h265,'-.bs','LineWidth', 2);
xlabel('�������ʣ�Mbps��','FontSize',12);
ylabel('SSIM[0-1]','FontSize',12);
title('episode003','FontSize',12);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-H264','ARC-H265','FontSize',12);
set(hleg1,'Location','SouthEast','FontSize',12);
axis([0 20 0 1.2]);
set(gca,'XTick',[0:0.5:20]);
grid on;
