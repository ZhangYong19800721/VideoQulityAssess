clear all;
close all;
numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_episode011_99000K.yuv';
RecoverVideo_02500K = 'out_episode011_02500K.yuv';
RecoverVideo_02000K = 'out_episode011_02000K.yuv';
RecoverVideo_01500K = 'out_episode011_01500K.yuv';
RecoverVideo_01000K = 'out_episode011_01000K.yuv';
RecoverVideo_00500K = 'out_episode011_00500K.yuv';

[Q02500K cdf02500K pdf02500K Qf02500K] = VideoDiffPDF(SourceVideo,RecoverVideo_02500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q02000K cdf02000K pdf02000K Qf02000K] = VideoDiffPDF(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q01500K cdf01500K pdf01500K Qf01500K] = VideoDiffPDF(SourceVideo,RecoverVideo_01500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q01000K cdf01000K pdf01000K Qf01000K] = VideoDiffPDF(SourceVideo,RecoverVideo_01000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q00500K cdf00500K pdf00500K Qf00500K] = VideoDiffPDF(SourceVideo,RecoverVideo_00500K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[PSNR02500K PSNRf02500K] = VideoPSNR(SourceVideo,RecoverVideo_02500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR02000K PSNRf02000K] = VideoPSNR(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR01500K PSNRf01500K] = VideoPSNR(SourceVideo,RecoverVideo_01500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR01000K PSNRf01000K] = VideoPSNR(SourceVideo,RecoverVideo_01000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR00500K PSNRf00500K] = VideoPSNR(SourceVideo,RecoverVideo_00500K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[SSIM02500K SSIMf02500K] = VideoSSIM(SourceVideo,RecoverVideo_02500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM02000K SSIMf02000K] = VideoSSIM(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM01500K SSIMf01500K] = VideoSSIM(SourceVideo,RecoverVideo_01500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM01000K SSIMf01000K] = VideoSSIM(SourceVideo,RecoverVideo_01000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM00500K SSIMf00500K] = VideoSSIM(SourceVideo,RecoverVideo_00500K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode011_result_part4.mat');
exit;