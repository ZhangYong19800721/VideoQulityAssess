function [pdf width] = VideoDiffPDF(SourceYUV,RecoverYUV,numOfFrame,frameWidth,frameHeight)
    fid1 = fopen(SourceYUV,'r');
    fid2 = fopen(RecoverYUV,'r');
    
    pdf = zeros(1,511);
    width = zeros(1,numOfFrame);
    
    for frame = 1:numOfFrame
        frame
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
        
        [n widthn] = FrameDiffPDF(Y1,Y2);
        pdf = pdf + n; 
        width(frame) = widthn;
    end
    
    pdf(pdf<0) = 0;
    pdf = pdf / sum(pdf);
end
