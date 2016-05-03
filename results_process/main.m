clear all;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
splitno = 'split0003';
file1 = strcat(strcat('../VideoQualityAssess_x264/result/',splitno),'_x264_result.mat');
file2 = strcat(strcat('../VideoQualityAssess_x265/result/',splitno),'_x265_result.mat');
file3 = strcat(strcat('../VideoQualityAssess_ARC_H264_Q05/result/',splitno),'_result_arc_H264_Q05.mat');
file4 = strcat(strcat('../VideoQualityAssess_ARC_H265_Q05/result/',splitno),'_result_arc_H265_Q05.mat');

rate = [20 18 16 14 12 10 8 6 4 2];
load(file1);
split_PSNR_x264(1,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x264(1,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x264(1,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file2);
split_PSNR_x265(1,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x265(1,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x265(1,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file3);
split_PSNR_ARC_x264(1,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x264(1,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x264(1,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file4);
split_PSNR_ARC_x265(1,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x265(1,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x265(1,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
splitno = 'split0004';
file1 = strcat(strcat('../VideoQualityAssess_x264/result/',splitno),'_x264_result.mat');
file2 = strcat(strcat('../VideoQualityAssess_x265/result/',splitno),'_x265_result.mat');
file3 = strcat(strcat('../VideoQualityAssess_ARC_H264_Q05/result/',splitno),'_result_arc_H264_Q05.mat');
file4 = strcat(strcat('../VideoQualityAssess_ARC_H265_Q05/result/',splitno),'_result_arc_H265_Q05.mat');

rate = [20 18 16 14 12 10 8 6 4 2];
load(file1);
split_PSNR_x264(2,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x264(2,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x264(2,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file2);
split_PSNR_x265(2,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x265(2,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x265(2,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file3);
split_PSNR_ARC_x264(2,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x264(2,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x264(2,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file4);
split_PSNR_ARC_x265(2,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x265(2,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x265(2,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
splitno = 'split0005';
file1 = strcat(strcat('../VideoQualityAssess_x264/result/',splitno),'_x264_result.mat');
file2 = strcat(strcat('../VideoQualityAssess_x265/result/',splitno),'_x265_result.mat');
file3 = strcat(strcat('../VideoQualityAssess_ARC_H264_Q05/result/',splitno),'_result_arc_H264_Q05.mat');
file4 = strcat(strcat('../VideoQualityAssess_ARC_H265_Q05/result/',splitno),'_result_arc_H265_Q05.mat');

rate = [20 18 16 14 12 10 8 6 4 2];
load(file1);
split_PSNR_x264(3,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x264(3,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x264(3,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file2);
split_PSNR_x265(3,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x265(3,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x265(3,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file3);
split_PSNR_ARC_x264(3,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x264(3,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x264(3,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file4);
split_PSNR_ARC_x265(3,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x265(3,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x265(3,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
splitno = 'split0006';
file1 = strcat(strcat('../VideoQualityAssess_x264/result/',splitno),'_x264_result.mat');
file2 = strcat(strcat('../VideoQualityAssess_x265/result/',splitno),'_x265_result.mat');
file3 = strcat(strcat('../VideoQualityAssess_ARC_H264_Q05/result/',splitno),'_result_arc_H264_Q05.mat');
file4 = strcat(strcat('../VideoQualityAssess_ARC_H265_Q05/result/',splitno),'_result_arc_H265_Q05.mat');

rate = [20 18 16 14 12 10 8 6 4 2];
load(file1);
split_PSNR_x264(4,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x264(4,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x264(4,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file2);
split_PSNR_x265(4,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_x265(4,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_x265(4,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file3);
split_PSNR_ARC_x264(4,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x264(4,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x264(4,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

load(file4);
split_PSNR_ARC_x265(4,:) = [PSNR20000K PSNR18000K PSNR16000K PSNR14000K PSNR12000K PSNR10000K PSNR08000K PSNR06000K PSNR04000K PSNR02000K];
split_PLLP_ARC_x265(4,:) = [PLLP20000K PLLP18000K PLLP16000K PLLP14000K PLLP12000K PLLP10000K PLLP08000K PLLP06000K PLLP04000K PLLP02000K];
split_SSIM_ARC_x265(4,:) = [SSIM20000K SSIM18000K SSIM16000K SSIM14000K SSIM12000K SSIM10000K SSIM08000K SSIM06000K SSIM04000K SSIM02000K];
myclear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

split_PSNR_x264_ave = sum(split_PSNR_x264) / 4;
split_PLLP_x264_ave = sum(split_PLLP_x264) / 4;
split_SSIM_x264_ave = sum(split_SSIM_x264) / 4;

split_PSNR_x265_ave = sum(split_PSNR_x265) / 4;
split_PLLP_x265_ave = sum(split_PLLP_x265) / 4;
split_SSIM_x265_ave = sum(split_SSIM_x265) / 4;

split_PSNR_ARC_x264_ave = sum(split_PSNR_ARC_x264) / 4;
split_PLLP_ARC_x264_ave = sum(split_PLLP_ARC_x264) / 4;
split_SSIM_ARC_x264_ave = sum(split_SSIM_ARC_x264) / 4;

split_PSNR_ARC_x265_ave = sum(split_PSNR_ARC_x265) / 4;
split_PLLP_ARC_x265_ave = sum(split_PLLP_ARC_x265) / 4;
split_SSIM_ARC_x265_ave = sum(split_SSIM_ARC_x265) / 4;


figure_title = 'split0003~0006 average'
figure(1);
plot(rate,split_PSNR_x264_ave,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_PSNR_x265_ave,'-rs','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PSNR_ARC_x264_ave,'-.bo','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PSNR_ARC_x265_ave,'-.bs','LineWidth', 2, 'MarkerSize',12);
xlabel('编码码率（Mbps）','FontSize',16);
ylabel('PSNR(dB)','FontSize',16);
title(figure_title,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-x264-Q05','ARC-x265-Q05');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 60]);
set(gca,'XTick',[0:2:20],'FontSize',14);
set(gca,'YTick',[0:3:60],'FontSize',14);
grid on;

figure(2);
plot(rate,split_PLLP_x264_ave,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_PLLP_x265_ave,'-rs','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PLLP_ARC_x264_ave,'-.bo','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_PLLP_ARC_x265_ave,'-.bs','LineWidth', 2, 'MarkerSize',12);
xlabel('编码码率（Mbps）','FontSize',16);
ylabel('PLLP[0-1]-无损像素比','FontSize',16);
title(figure_title,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-x264-Q05','ARC-x265-Q05');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 0.5]);
set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;

figure(3);
plot(rate,split_SSIM_x264_ave,'-ro','LineWidth', 2, 'MarkerSize',12);
hold;
plot(rate,split_SSIM_x265_ave,'-rs','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_SSIM_ARC_x264_ave,'-.bo','LineWidth', 2, 'MarkerSize',12);
plot(rate,split_SSIM_ARC_x265_ave,'-.bs','LineWidth', 2, 'MarkerSize',12);
xlabel('编码码率（Mbps）','FontSize',16);
ylabel('SSIM[0-1]','FontSize',16);
title(figure_title,'FontSize',22);
hleg1 = legend('FFMPEG-x264','FFMPEG-x265','ARC-x264-Q05','ARC-x265-Q05');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([0 20 0 1.2]);
set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

psnr_range = min(split_PSNR_ARC_x264_ave):0.001:max(split_PSNR_x264_ave);
rate_range_1 = interp1(split_PSNR_x264_ave(length(split_PSNR_x264_ave):-1:1)',rate(length(rate):-1:1)',psnr_range);
rate_range_2 = interp1(split_PSNR_ARC_x264_ave(length(split_PSNR_ARC_x264_ave):-1:1)',rate(length(rate):-1:1)',psnr_range);
rate_range_3 = interp1(split_PSNR_x265_ave(length(split_PSNR_x265_ave):-1:1)',rate(length(rate):-1:1)',psnr_range);
rate_range_4 = interp1(split_PSNR_ARC_x265_ave(length(split_PSNR_ARC_x265_ave):-1:1)',rate(length(rate):-1:1)',psnr_range);
figure(4);
rate_ratio_1 = 100 * rate_range_2./rate_range_1;
plot(psnr_range,rate_ratio_1,'-r','LineWidth', 2, 'MarkerSize',12);
hold;
rate_ratio_2 = 100 * rate_range_4./rate_range_3;
plot(psnr_range,rate_ratio_2,'-.b','LineWidth', 2, 'MarkerSize',12);

xlabel('PSNR（dB）','FontSize',16);
ylabel('编码速率比=ARC编码速率/FFMPEG编码速率 x 100%','FontSize',16);
title('ArcVideo vs ffmpeg','FontSize',22);
hleg1 = legend('H264','H265');
set(hleg1,'Location','SouthEast','FontSize',16);
axis([37 42 0 100]);
%set(gca,'XTick',[0:2:20],'FontSize',14);
grid on;

figure(5);
diff_h264 = rate_ratio_1(psnr_range>=40);
diff_h265 = rate_ratio_2(psnr_range>=40);
ave_diff_h264 = mean(diff_h264);
ave_diff_h265 = mean(diff_h265);
bar([ave_diff_h264 ave_diff_h265]);
axis([0 2.5 0 100]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

psnr_range_ffm = min(split_PSNR_x265_ave):0.001:max(split_PSNR_x264_ave);
rate_range_1 = interp1(split_PSNR_x264_ave(length(split_PSNR_x264_ave):-1:1)',rate(length(rate):-1:1)',psnr_range_ffm);
rate_range_2 = interp1(split_PSNR_x265_ave(length(split_PSNR_x265_ave):-1:1)',rate(length(rate):-1:1)',psnr_range_ffm);
rate_ratio_ffm = 100 * rate_range_2./rate_range_1;

psnr_range_arc = min(split_PSNR_ARC_x265_ave):0.001:max(split_PSNR_ARC_x264_ave);
rate_range_3 = interp1(split_PSNR_ARC_x264_ave(length(split_PSNR_ARC_x264_ave):-1:1)',rate(length(rate):-1:1)',psnr_range_arc);
rate_range_4 = interp1(split_PSNR_ARC_x265_ave(length(split_PSNR_ARC_x265_ave):-1:1)',rate(length(rate):-1:1)',psnr_range_arc);
rate_ratio_arc = 100 * rate_range_4./rate_range_3;
figure(6);
plot(psnr_range_ffm,rate_ratio_ffm,'-r','LineWidth', 2, 'MarkerSize',12);
hold;
plot(psnr_range_arc,rate_ratio_arc,'-.b','LineWidth', 2, 'MarkerSize',12);
title('H265 vs H264','FontSize',22);
xlabel('PSNR（dB）','FontSize',16);
ylabel('编码速率比=H265编码速率/H264编码速率 x 100%','FontSize',16);
hleg1 = legend('FFMPEG','ARCVIDEO');
set(hleg1,'Location','SouthEast','FontSize',16);
grid on;
