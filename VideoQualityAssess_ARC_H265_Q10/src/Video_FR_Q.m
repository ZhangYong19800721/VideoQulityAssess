function [PSNR PSNRf PLLP PLLPf] = Video_FR_Q(SourceYUV,RecoverYUV,numOfFrame,frameWidth,frameHeight,chroma)
    fid1 = fopen(SourceYUV,'r');
    fid2 = fopen(RecoverYUV,'r');
    
    if chroma == 'yuv444p'
        w = frameWidth;
        h = frameHeight;
    elseif chroma == 'yuv420p'
        w = frameWidth/2;
        h = frameHeight/2;
    elseif chroma == 'yuv422p'
        w = frameWidth/2;
        h = frameHeight;
    else
        error('Wrong chroma format');
    end
	
	frame_seq = 10;
	
	Y1 = zeros(frameWidth,frameHeight,frame_seq);
    U1 = zeros(w,h,frame_seq);
    V1 = zeros(w,h,frame_seq);
	
	Y2 = zeros(frameWidth,frameHeight,frame_seq);
    U2 = zeros(w,h,frame_seq);
    V2 = zeros(w,h,frame_seq);
    
	PSNRf = zeros(1,numOfFrame);
    PLLPf = zeros(1,numOfFrame);
	
	range = 0;
    
    filename = RecoverYUV
    for idx_1 = 1:(numOfFrame/frame_seq)
	    start_frame  = (idx_1 - 1)*frame_seq + 1;
		end_frame    = (idx_1 - 1)*frame_seq + frame_seq;
		
		for idx_2 = 1:frame_seq
			Y1(:,:,idx_2) = fread(fid1,[frameWidth,frameHeight], 'uchar');
			U1(:,:,idx_2) = fread(fid1,[w,h], 'uchar');
			V1(:,:,idx_2) = fread(fid1,[w,h], 'uchar');
   
			Y2(:,:,idx_2) = fread(fid2,[frameWidth,frameHeight], 'uchar');
			U2(:,:,idx_2) = fread(fid2,[w,h], 'uchar');
			V2(:,:,idx_2) = fread(fid2,[w,h], 'uchar');	
		end
		
		for idx_2 = 1:frame_seq
			PSNRf(start_frame + idx_2 - 1) = psnr(Y1,Y2);
			PLLPf(start_frame + idx_2 - 1) = pllp(Y1,Y2,range);
		end
	
		process = end_frame / numOfFrame
    end
	
	fclose(fid1);
    fclose(fid2);
    
	PSNR = mean(PSNRf)
    PLLP = mean(PLLPf);
end
