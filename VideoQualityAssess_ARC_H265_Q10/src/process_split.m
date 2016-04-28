function process_split(splitno)
	numOfFrame = 1020; %×¢ÒâÐÞ¸Ä
	frameWidth = 4096;
	frameHeight = 2160;

	SourceVideo      = strcat(strcat('origin_', splitno),'_99000K.yuv');
	RecoverVideo_20000K = strcat(strcat('arc_', splitno),'_20000K.yuv');
	RecoverVideo_18000K = strcat(strcat('arc_', splitno),'_18000K.yuv');
	RecoverVideo_16000K = strcat(strcat('arc_', splitno),'_16000K.yuv');
	RecoverVideo_14000K = strcat(strcat('arc_', splitno),'_14000K.yuv');
	RecoverVideo_12000K = strcat(strcat('arc_', splitno),'_12000K.yuv');
	RecoverVideo_10000K = strcat(strcat('arc_', splitno),'_10000K.yuv');
	RecoverVideo_08000K = strcat(strcat('arc_', splitno),'_08000K.yuv');
	RecoverVideo_06000K = strcat(strcat('arc_', splitno),'_06000K.yuv');
	RecoverVideo_04000K = strcat(strcat('arc_', splitno),'_04000K.yuv');
	RecoverVideo_02000K = strcat(strcat('arc_', splitno),'_02000K.yuv');

	[PSNR20000K PSNRf20000K PLLP20000K PLLPf20000K] = Video_FR_Q(SourceVideo,RecoverVideo_20000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP18000K PLLPf18000K] = Video_FR_Q(SourceVideo,RecoverVideo_18000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP16000K PLLPf16000K] = Video_FR_Q(SourceVideo,RecoverVideo_16000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP14000K PLLPf14000K] = Video_FR_Q(SourceVideo,RecoverVideo_14000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP12000K PLLPf12000K] = Video_FR_Q(SourceVideo,RecoverVideo_12000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP10000K PLLPf10000K] = Video_FR_Q(SourceVideo,RecoverVideo_10000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP08000K PLLPf08000K] = Video_FR_Q(SourceVideo,RecoverVideo_08000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP06000K PLLPf06000K] = Video_FR_Q(SourceVideo,RecoverVideo_06000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP04000K PLLPf04000K] = Video_FR_Q(SourceVideo,RecoverVideo_04000K,numOfFrame,frameWidth,frameHeight,'yuv420p');
	[PSNR20000K PSNRf20000K PLLP02000K PLLPf02000K] = Video_FR_Q(SourceVideo,RecoverVideo_02000K,numOfFrame,frameWidth,frameHeight,'yuv420p');

	save(strcat(splitno,'_result_arc.mat');
end