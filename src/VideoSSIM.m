function [ssim_ave ssim_frames] = VideoSSIM(SourceYUV,RecoverYUV,numOfFrame,frameWidth,frameHeight)
    fid1 = fopen(SourceYUV,'r');
    fid2 = fopen(RecoverYUV,'r');
    
    ssim_frames = zeros(1,numOfFrame);
    
    filename = RecoverYUV
    for frame = 1:numOfFrame
        process = frame / numOfFrame
        Y1 = zeros(frameWidth,frameHeight);
        U1 = zeros(frameWidth,frameHeight);
        V1 = zeros(frameWidth,frameHeight);
   
        Y2 = zeros(frameWidth,frameHeight);
        U2 = zeros(frameWidth,frameHeight);
        V2 = zeros(frameWidth,frameHeight);
  
        Y1 = fread(fid1,[frameWidth,frameHeight], 'uchar');
        U1 = fread(fid1,[frameWidth,frameHeight], 'uchar');
        V1 = fread(fid1,[frameWidth,frameHeight], 'uchar');
   
        Y2 = fread(fid2,[frameWidth,frameHeight], 'uchar');
        U2 = fread(fid2,[frameWidth,frameHeight], 'uchar');
        V2 = fread(fid2,[frameWidth,frameHeight], 'uchar');
        
        ssim_frames(frame) = ssim(Y1,Y2);
    end
	
	fclose(fid1);
    fclose(fid2);
    
    ssim_ave = mean(ssim_frames);
end
