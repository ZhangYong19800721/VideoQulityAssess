function PLLP = FramePLLP( image1, image2, range )
    [row col] = size(image1);
    diff = image1 - image2;
    diff = reshape(diff,1,row*col);
    PLLP = sum(abs(diff)<=range) / length(diff);
end

