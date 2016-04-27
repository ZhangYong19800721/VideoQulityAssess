function out = psnr( source_image, recover_image, bit_depth )
    [h,w] = size(source_image);
    max_value = 2^bit_depth-1;                         %ͼ���ж��ٻҶȼ�
    % mes_value =sum(sum((source_image-recover_image).^2))/(h*w);     %������
    % out=20*log10(max_value/sqrt(mes_value));           %��ֵ�����,DBֵ
	x = sum(sum((source_image-recover_image).^2));
	if x == 0
		x = 1;
	end
    out=20*log10(max_value) - 10*log10(x) + 10*log10(h*w);
end

