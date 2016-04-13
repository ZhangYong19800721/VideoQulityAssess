function [Q cdf pdf Qf] = VideoDiffPDF(SourceYUV,RecoverYUV,numOfFrame,frameWidth,frameHeight)
    fid1 = fopen(SourceYUV,'r');
    fid2 = fopen(RecoverYUV,'r');
    
    pdf = zeros(1,511);
    Qf = zeros(1,numOfFrame);
	
	range = 0;
    
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
