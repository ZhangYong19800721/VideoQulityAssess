clear all;
close all;
numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_episode002_99000K.yuv';
RecoverVideo_10000K = 'out_episode002_10000K.yuv';
RecoverVideo_09000K = 'out_episode002_09000K.yuv';
RecoverVideo_08000K = 'out_episode002_08000K.yuv';
RecoverVideo_07000K = 'out_episode002_07000K.yuv';
RecoverVideo_06000K = 'out_episode002_06000K.yuv';

[Q10000K cdf10000K pdf10000K Qf10000K] = VideoDiffPDF(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q09000K cdf09000K pdf09000K Qf09000K] = VideoDiffPDF(SourceVideo,RecoverVideo_09000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q08000K cdf08000K pdf08000K Qf08000K] = VideoDiffPDF(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q07000K cdf07000K pdf07000K Qf07000K] = VideoDiffPDF(SourceVideo,RecoverVideo_07000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q06000K cdf06000K pdf06000K Qf06000K] = VideoDiffPDF(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[PSNR10000K PSNRf10000K] = VideoPSNR(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR09000K PSNRf09000K] = VideoPSNR(SourceVideo,RecoverVideo_09000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR08000K PSNRf08000K] = VideoPSNR(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR07000K PSNRf07000K] = VideoPSNR(SourceVideo,RecoverVideo_07000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR06000K PSNRf06000K] = VideoPSNR(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[SSIM10000K SSIMf10000K] = VideoSSIM(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM09000K SSIMf09000K] = VideoSSIM(SourceVideo,RecoverVideo_09000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM08000K SSIMf08000K] = VideoSSIM(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM07000K SSIMf07000K] = VideoSSIM(SourceVideo,RecoverVideo_07000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM06000K SSIMf06000K] = VideoSSIM(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode002_result_part2.mat');
exit;