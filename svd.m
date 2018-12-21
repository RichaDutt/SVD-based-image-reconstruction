img =imread("hendrix_final.png");
img=im2double(img);
red = img(:,:,1); 
green = img(:,:,2);
blue = img(:,:,3);
[ur,sr,vr]=svd(red) ;
[ug,sg,vg]=svd(green) ;
[ub,sb,vb]=svd(blue) ;

figure
plot(log((diag(sr))))

n1=rank(sr);
dispEr1 = [];
numSVals1 = [];
for i=1:25:n1
 C1 = sr;
 C1(i+1:end,:)=0;
 C1(:,i+1:end)=0;
 D1=ur*C1*vr';
 error1=norm(red-D1,'fro');
 dispEr1 = [dispEr1; error1];
 numSVals1 = [numSVals1; i];
 endfor

 
 figure 
 plot(numSVals1, dispEr1);
 
n2=rank(sg);
dispEr2 = [];
numSVals2 = [];
for i=1:25:n2
 C2 = sg;
 C2(i+1:end,:)=0;
 C2(:,i+1:end)=0;
 D2=ug*C2*vg';
 error2=norm(green-D2,'fro');
 dispEr2 = [dispEr2; error2];
 numSVals2 = [numSVals2; i];
 endfor
 
 figure
  
 plot(numSVals2, dispEr2);
 
 n3=rank(sb);
dispEr3 = [];
numSVals3 = [];
for i=1:25:n3
 C3 = sb;
 C3(i+1:end,:)=0;
 C3(:,i+1:end)=0;
 D3=ub*C3*vb';
 error3=norm(blue-D3,'fro');
 dispEr3 = [dispEr3; error3];
 numSVals3 = [numSVals3; i];
 endfor
 
figure

 plot(numSVals3, dispEr3);
 
 
i=300;
red_sr=sr;
g_sg=sg;
b_sb=sb;
red_sr(i+1:end,:)=0;
red_sr(:,i+1:end)=0;
g_sg(i+1:end,:)=0;
g_sg(:,i+1:end)=0;
b_sb(i+1:end,:)=0;
b_sb(:,i+1:end)=0;
r=ur*red_sr*vr';
g=ug*g_sg*vg';
b=ub*b_sb*vb';
output_final=cat(3,r,g,b);
figure;
imshow(output_final);