clear all;
close all;
numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_split0001_99000K.yuv';
RecoverVideo_20000K = 'out_split0001_20000K.yuv';
RecoverVideo_18000K = 'out_split0001_18000K.yuv';
RecoverVideo_16000K = 'out_split0001_16000K.yuv';
RecoverVideo_14000K = 'out_split0001_14000K.yuv';
RecoverVideo_12000K = 'out_split0001_12000K.yuv';
RecoverVideo_10000K = 'out_split0001_10000K.yuv';
RecoverVideo_08000K = 'out_split0001_08000K.yuv';
RecoverVideo_06000K = 'out_split0001_06000K.yuv';
RecoverVideo_04000K = 'out_split0001_04000K.yuv';
RecoverVideo_02000K = 'out_split0001_02000K.yuv';

[PLLP20000K PLLPf20000K] = VideoPLLP(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP18000K PLLPf18000K] = VideoPLLP(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP16000K PLLPf16000K] = VideoPLLP(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP14000K PLLPf14000K] = VideoPLLP(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP12000K PLLPf12000K] = VideoPLLP(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP10000K PLLPf10000K] = VideoPLLP(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP08000K PLLPf08000K] = VideoPLLP(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP06000K PLLPf06000K] = VideoPLLP(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP04000K PLLPf04000K] = VideoPLLP(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PLLP02000K PLLPf02000K] = VideoPLLP(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

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

save('split0001_result.mat');
exit;