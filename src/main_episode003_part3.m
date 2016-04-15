clear all;
close all;
numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
frameWidth = 4096;
frameHeight = 2160;

SourceVideo      = 'out_episode003_99000K.yuv';
RecoverVideo_05000K = 'out_episode003_05000K.yuv';
RecoverVideo_04500K = 'out_episode003_04500K.yuv';
RecoverVideo_04000K = 'out_episode003_04000K.yuv';
RecoverVideo_03500K = 'out_episode003_03500K.yuv';
RecoverVideo_03000K = 'out_episode003_03000K.yuv';

[Q05000K cdf05000K pdf05000K Qf05000K] = VideoDiffPDF(SourceVideo,RecoverVideo_05000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q04500K cdf04500K pdf04500K Qf04500K] = VideoDiffPDF(SourceVideo,RecoverVideo_04500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q04000K cdf04000K pdf04000K Qf04000K] = VideoDiffPDF(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q03500K cdf03500K pdf03500K Qf03500K] = VideoDiffPDF(SourceVideo,RecoverVideo_03500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[Q03000K cdf03000K pdf03000K Qf03000K] = VideoDiffPDF(SourceVideo,RecoverVideo_03000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[PSNR05000K PSNRf05000K] = VideoPSNR(SourceVideo,RecoverVideo_05000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR04500K PSNRf04500K] = VideoPSNR(SourceVideo,RecoverVideo_04500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR04000K PSNRf04000K] = VideoPSNR(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR03500K PSNRf03500K] = VideoPSNR(SourceVideo,RecoverVideo_03500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[PSNR03000K PSNRf03000K] = VideoPSNR(SourceVideo,RecoverVideo_03000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

[SSIM05000K SSIMf05000K] = VideoSSIM(SourceVideo,RecoverVideo_05000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM04500K SSIMf04500K] = VideoSSIM(SourceVideo,RecoverVideo_04500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM04000K SSIMf04000K] = VideoSSIM(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM03500K SSIMf03500K] = VideoSSIM(SourceVideo,RecoverVideo_03500K,numOfFrame,frameWidth,frameHeight,'yuv420p');
[SSIM03000K SSIMf03000K] = VideoSSIM(SourceVideo,RecoverVideo_03000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

save('episode003_result_part3.mat');
exit;