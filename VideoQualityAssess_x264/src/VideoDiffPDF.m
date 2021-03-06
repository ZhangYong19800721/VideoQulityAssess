function [Q cdf pdf Qf] = VideoDiffPDF(SourceYUV,RecoverYUV,numOfFrame,frameWidth,frameHeight,chroma)
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
	
	Y1 = zeros(frameWidth,frameHeight);
    U1 = zeros(w,h);
    V1 = zeros(w,h);
	
	Y2 = zeros(frameWidth,frameHeight);
    U2 = zeros(w,h);
    V2 = zeros(w,h);
    
    pdf = zeros(1,511);
    Qf = zeros(1,numOfFrame);
	
	range = 0;
    
    filename = RecoverYUV
    for frame = 1:numOfFrame
        process = frame / numOfFrame
  
        Y1 = fread(fid1,[frameWidth,frameHeight], 'uchar');
        U1 = fread(fid1,[w,h], 'uchar');
        V1 = fread(fid1,[w,h], 'uchar');
   
        Y2 = fread(fid2,[frameWidth,frameHeight], 'uchar');
        U2 = fread(fid2,[w,h], 'uchar');
        V2 = fread(fid2,[w,h], 'uchar');
        
        [n Qn] = FrameDiffPDF(Y1,Y2,range);
        pdf = pdf + n; 
        Qf(frame) = Qn;
    end
	
	fclose(fid1);
    fclose(fid2);
    
    pdf(pdf<0) = 0;
    pdf = pdf / sum(pdf);
    cdf = cumsum(pdf);
    Q = pdf(256);
end
