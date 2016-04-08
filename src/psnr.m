function out = psnr( image1, image2, bit_depth )
    [h,w] = size(image1);
    max_value = 2^bit_depth-1;                         %ͼ���ж��ٻҶȼ�
    dis = image1-image2;
    dis = dis(1:100,1:100);
    mes_value =sum(sum((image1-image2).^2))/(h*w);     %������
    out=20*log10(max_value/sqrt(mes_value));           %��ֵ�����,DBֵ
end

