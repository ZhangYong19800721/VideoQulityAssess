function out = psnr( source_image, recover_image, bit_depth )
    [h,w] = size(source_image);
    max_value = 2^bit_depth-1;                         %图像有多少灰度级
    mes_value =sum(sum((source_image-recover_image).^2))/(h*w);     %均方差
    out=20*log10(max_value/sqrt(mes_value));           %峰值信噪比,DB值
end

