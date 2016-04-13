clear all;
close all;
numOfFrame = 915; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_episode001_99000K.yuv';
RecoverVideo_20000K = 'out_episode001_20000K.yuv';
RecoverVideo_18000K = 'out_episode001_18000K.yuv';
RecoverVideo_16000K = 'out_episode001_16000K.yuv';
RecoverVideo_14000K = 'out_episode001_14000K.yuv';
RecoverVideo_12000K = 'out_episode001_12000K.yuv';


[Q20000K cdf20000K pdf20000K Qf20000K] = VideoDiffPDF(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight);
[Q18000K cdf18000K pdf18000K Qf18000K] = VideoDiffPDF(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight);
[Q16000K cdf16000K pdf16000K Qf16000K] = VideoDiffPDF(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight);
[Q14000K cdf14000K pdf14000K Qf14000K] = VideoDiffPDF(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight);
[Q12000K cdf12000K pdf12000K Qf12000K] = VideoDiffPDF(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight);

[PSNR20000K PSNRf20000K] = VideoPSNR(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight);
[PSNR18000K PSNRf18000K] = VideoPSNR(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight);
[PSNR16000K PSNRf16000K] = VideoPSNR(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight);
[PSNR14000K PSNRf14000K] = VideoPSNR(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight);
[PSNR12000K PSNRf12000K] = VideoPSNR(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight);

[SSIM20000K SSIMf20000K] = VideoSSIM(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight);
[SSIM18000K SSIMf18000K] = VideoSSIM(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight);
[SSIM16000K SSIMf16000K] = VideoSSIM(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight);
[SSIM14000K SSIMf14000K] = VideoSSIM(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight);
[SSIM12000K SSIMf12000K] = VideoSSIM(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight);

save('episode001_result_part1.mat');
