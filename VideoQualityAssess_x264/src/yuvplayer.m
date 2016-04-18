function flag = yuvplayer( filename, frame_start, frame_end, width, height, chroma)
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
    fid = fopen('out.yuv','r');
    
    Y = zeros(width,height);
    
    if chroma == 'yuv444p'
        w = width;
        h = height;
    elseif chroma == 'yuv420p'
        w = width/2;
        h = height/2;
    elseif chroma == 'yuv422p'
        w = width/2;
        h = height;
    else
        error('Wrong chroma format');
    end
    
    U = zeros(w,h);
    V = zeros(w,h);
    
    n = frame_start;
    while (n-1) > 0    
        Y = fread(fid,[width height],'uchar');
        U = fread(fid,[w h],'uchar');
        V = fread(fid,[w h],'uchar');
        n = n-1;
    end
    
    for frame = frame_start:frame_end
        Y = fread(fid,[width height],'uchar');
        U = fread(fid,[w h],'uchar');
        V = fread(fid,[w h],'uchar');
        figure;
        imshow(Y'/255);
    end
    
    fclose(fid);
    flag = true;
end
