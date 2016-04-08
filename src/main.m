clear all;
close all;

SourceVideoYUV = 'out_episode001_100M.yuv';
RecoverVideoYUV = 'out_episode001_01M.yuv';
numOfFrame = 915;
frameWidth = 4096;
frameHeight = 2160;

[pdf seq] = VideoDiffPDF(SourceVideoYUV,RecoverVideoYUV,numOfFrame,frameWidth,frameHeight);

% 对n序列进行线性插值
x = 1:length(pdf);
xi = 1:0.01:length(x);
yi = interp1(x,pdf,xi);

width_3dB = sum(yi > (max(yi)/2)) / 100;
figure;
plot(1:length(seq),seq);
