function out = psnr( source_image, recover_image, bit_depth )
    [h,w] = size(source_image);
    max_value = 2^bit_depth-1;                         %ͼ���ж��ٻҶȼ�
    mes_value =sum(sum((source_image-recover_image).^2))/(h*w);     %������
    out=20*log10(max_value/sqrt(mes_value));           %��ֵ�����,DBֵ
end

