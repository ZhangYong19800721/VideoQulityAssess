clear all;
close all;
numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_episode002_99000K.yuv';
RecoverVideo_20000K = 'out_episode002_20000K.yuv';
RecoverVideo_18000K = 'out_episode002_18000K.yuv';
RecoverVideo_16000K = 'out_episode002_16000K.yuv';
RecoverVideo_14000K = 'out_episode002_14000K.yuv';
RecoverVideo_12000K = 'out_episode002_12000K.yuv';
RecoverVideo_10000K = 'out_episode002_10000K.yuv';
RecoverVideo_08000K = 'out_episode002_08000K.yuv';
RecoverVideo_06000K = 'out_episode002_06000K.yuv';
RecoverVideo_04000K = 'out_episode002_04000K.yuv';
RecoverVideo_02000K = 'out_episode002_02000K.yuv';
RecoverVideo_01000K = 'out_episode002_01000K.yuv';

[Q20000K cdf20000K pdf20000K Qf20000K] = VideoDiffPDF(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q18000K cdf18000K pdf18000K Qf18000K] = VideoDiffPDF(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q16000K cdf16000K pdf16000K Qf16000K] = VideoDiffPDF(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q14000K cdf14000K pdf14000K Qf14000K] = VideoDiffPDF(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q12000K cdf12000K pdf12000K Qf12000K] = VideoDiffPDF(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q10000K cdf10000K pdf10000K Qf10000K] = VideoDiffPDF(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q08000K cdf08000K pdf08000K Qf08000K] = VideoDiffPDF(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q06000K cdf06000K pdf06000K Qf06000K] = VideoDiffPDF(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q04000K cdf04000K pdf04000K Qf04000K] = VideoDiffPDF(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q02000K cdf02000K pdf02000K Qf02000K] = VideoDiffPDF(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q01000K cdf01000K pdf01000K Qf01000K] = VideoDiffPDF(SourceVideo,RecoverVideo_01000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode002_result_arc_h264_PLLP.mat');

[PSNR20000K PSNRf20000K] = VideoPSNR(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR18000K PSNRf18000K] = VideoPSNR(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR16000K PSNRf16000K] = VideoPSNR(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR14000K PSNRf14000K] = VideoPSNR(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR12000K PSNRf12000K] = VideoPSNR(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR10000K PSNRf10000K] = VideoPSNR(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR08000K PSNRf08000K] = VideoPSNR(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR06000K PSNRf06000K] = VideoPSNR(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR04000K PSNRf04000K] = VideoPSNR(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR02000K PSNRf02000K] = VideoPSNR(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR01000K PSNRf01000K] = VideoPSNR(SourceVideo,RecoverVideo_01000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode002_result_arc_h264_PSNR.mat');

[SSIM20000K SSIMf20000K] = VideoSSIM(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM18000K SSIMf18000K] = VideoSSIM(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM16000K SSIMf16000K] = VideoSSIM(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM14000K SSIMf14000K] = VideoSSIM(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM12000K SSIMf12000K] = VideoSSIM(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM10000K SSIMf10000K] = VideoSSIM(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM08000K SSIMf08000K] = VideoSSIM(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM06000K SSIMf06000K] = VideoSSIM(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM04000K SSIMf04000K] = VideoSSIM(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM02000K SSIMf02000K] = VideoSSIM(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM01000K SSIMf01000K] = VideoSSIM(SourceVideo,RecoverVideo_01000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode002_result_arc_h264.mat');
exit;