f=imread('lena_color.png');
subplot(1,4,1)
imshow(f)
title('original  RGB image')


%rgb2ind
[g,map]=rgb2ind(f,64)
subplot(1,3,2)
imshow(g)
imagesc(g)
colormap(map)
title('RGB to Indexed')


%ind2rgb
a=ind2rgb(g,map)
subplot(1,3,3)
imshow(a)
title('Indexed to RGB')

%rgb2gray
b=rgb2gray(f)
subplot(1,4,2)
imshow(b)
title('RGB to Grayscale')

%gray2ind
[c,maps]=gray2ind(b,64)
subplot(1,4,3)
imshow(c)
imagesc(c)
colormap(maps)
title('Grayscale to Indexed')

%ind2gray
d=ind2gray(c,maps)
subplot(1,4,4)
imshow(d)
title('Indexed to Grayscale')
