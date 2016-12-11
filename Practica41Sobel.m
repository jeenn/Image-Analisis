clear all  %#ok<CLALL>
close all

%LENNA SIMPLE
lenna=imread('Lenna.BMP'); %Leemos la imagen y la guardamos en una matriz llamada lenna
imcopy = lenna;
imcopy = double(imcopy);

% %Matriz del operador Sobel
% mS1=[-1 -2 -2; 0 0 0; 1 2 2];
% mS2=[-1 0 1; 2 0 2; 1 0 1]; 
% 
% %operador Sovel
% imcopy = double(imcopy);
% cs1 = convn(imcopy,mS1);
% cs2 = convn(imcopy,mS2);
% cs3 = max(cs1,cs2);
% cs1 = uint8(cs1);
% cs2 = uint8(cs2);
% cs3 = uint8(cs3);
sd = edge(imcopy, 'Sobel');
s05 = edge(imcopy, 'Sobel',0.05);
s1 = edge(imcopy, 'Sobel',0.1);
s15 = edge(imcopy, 'Sobel', 0.15);

imshow(lenna),title('Original');

figure('Name','Lenna Sobel');
subplot(2,2,1),imshow(sd),title('Sobel default');
subplot(2,2,2),imshow(s05),title('Sobel 0.05');
subplot(2,2,3),imshow(s1),title('Sobel 0.1');
subplot(2,2,4),imshow(s15),title('Sobel 0.15');

%LENNA CON RUIDO GAUSSIANO
lennaGauss= imnoise(lenna, 'Gaussian', 0.3);

imcopyG = lennaGauss;
imcopyG = double(imcopyG);

% %Matriz del operador Sobel
% mS1=[-1 -2 -2; 0 0 0; 1 2 2];
% mS2=[-1 0 1; 2 0 2; 1 0 1]; 
% 
% %operador Sovel
% imcopy = double(imcopy);
% cs1 = convn(imcopy,mS1);
% cs2 = convn(imcopy,mS2);
% cs3 = max(cs1,cs2);
% cs1 = uint8(cs1);
% cs2 = uint8(cs2);
% cs3 = uint8(cs3);

sdG = edge(imcopyG, 'Sobel');
s05G = edge(imcopyG, 'Sobel',0.05);
s1G = edge(imcopyG, 'Sobel',0.1);
s15G = edge(imcopyG, 'Sobel', 0.15);

figure('Name','Lenna Sobel con Ruido Gaussiano');
subplot(2,2,1),imshow(sdG),title('Sobel default');
subplot(2,2,2),imshow(s05G),title('Sobel 0.05');
subplot(2,2,3),imshow(s1G),title('Sobel 0.1');
subplot(2,2,4),imshow(s15G),title('Sobel 0.15');


