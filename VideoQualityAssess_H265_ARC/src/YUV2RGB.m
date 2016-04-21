function RGB = YUV2RGB(Y,U,V)
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here

matrix=[ 0.299    0.587    0.114; 
        -0.14713 -0.28886  0.436; 
         0.615   -0.51498 -0.10001];   

matrix=inv(matrix); 

[wY hY] = size(Y);
[wU hU] = size(U);
[wV hV] = size(V);

U = imresize(U,wY/wU);
V = imresize(V,wY/wV);

RGB = zeros(wY,hY,3);

for i=1:wY    
    for j=1:hY          
        tmp=matrix*[Y(i,j) U(i,j) V(i,j)]';         
        RGB(i,j,1)=tmp(1);         
        RGB(i,j,2)=tmp(2);         
        RGB(i,j,3)=tmp(3);    
    end 
end
