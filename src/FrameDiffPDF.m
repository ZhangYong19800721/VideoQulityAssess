function [pdf,Q] = FrameDiffPDF( image1, image2, range )
    [row col] = size(image1);
    diff = image1 - image2;
    diff = reshape(diff,1,row*col);
    [pdf xout] = hist(diff,-255:1:255);
    pdf = pdf / sum(pdf);
    
    Q = sum(abs(diff)<=range) / length(diff);
end

