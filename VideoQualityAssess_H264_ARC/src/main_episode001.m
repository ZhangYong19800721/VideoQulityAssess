clear all;
close all;
numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_episode001_99000K.yuv';
RecoverVideo_20000K = 'out_episode001_20000K.yuv';
RecoverVideo_15000K = 'out_episode001_15000K.yuv';
RecoverVideo_10000K = 'out_episode001_10000K.yuv';
RecoverVideo_05000K = 'out_episode001_05000K.yuv';

[Q20000K cdf20000K pdf20000K Qf20000K] = VideoDiffPDF(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q15000K cdf15000K pdf15000K Qf15000K] = VideoDiffPDF(SourceVideo,RecoverVideo_15000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q10000K cdf10000K pdf10000K Qf10000K] = VideoDiffPDF(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q05000K cdf05000K pdf05000K Qf05000K] = VideoDiffPDF(SourceVideo,RecoverVideo_05000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[PSNR20000K PSNRf20000K] = VideoPSNR(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR15000K PSNRf15000K] = VideoPSNR(SourceVideo,RecoverVideo_15000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR10000K PSNRf10000K] = VideoPSNR(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR05000K PSNRf05000K] = VideoPSNR(SourceVideo,RecoverVideo_05000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[SSIM20000K SSIMf20000K] = VideoSSIM(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM15000K SSIMf15000K] = VideoSSIM(SourceVideo,RecoverVideo_15000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM10000K SSIMf10000K] = VideoSSIM(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM05000K SSIMf05000K] = VideoSSIM(SourceVideo,RecoverVideo_05000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode001_result.mat');
exit;