function [n,width] = FrameDiffPDF( image1, image2 )
    [row col] = size(image1);
    diff = image1 - image2;
    diff = reshape(diff,1,row*col);
    [n xout] = hist(diff,-255:1:255);
    n = n / sum(n);
    
    % ��n���н������Բ�ֵ
    x = 1:length(n);
    xi = 1:0.01:length(n);
    yi = interp1(x,n,xi);
    
    % ����3dB���
    width = sum(yi>(max(yi)/2)) / 100;
end

