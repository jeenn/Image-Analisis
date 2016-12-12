clear all  %#ok<CLALL>
close all

%LENNA SIMPLE
lenna=imread('Lenna.BMP'); %Leemos la imagen y la guardamos en una matriz llamada lenna
imcopy = lenna;
imcopy = double(imcopy);

% %Matriz del operador Prewitt
% mP1=[-1 -1 -1; 0 0 0; 1 1 1];
% mP2=[-1 0 -1; -1 0 1; -1 0 1]; 
% 
% %operador Prewitt
% cp1 = convn(imcopy,mP1);
% cp2 = convn(imcopy,mP2);
% cp3 = max(cp1,cp2);
% cp3 = uint8(cp3);
% imcopy = uint8(imcopy);

pd  = edge(imcopy, 'Prewitt');
p05 = edge(imcopy, 'Prewitt',0.05);
p1 = edge(imcopy, 'Prewitt',0.1);
p15 = edge(imcopy, 'Prewitt', 0.15);

imshow(lenna),title('Imagen Original');

figure('Name','Lenna Prewitt');
subplot(2,2,1),imshow(pd),title('Prewitt default');
subplot(2,2,2),imshow(p05),title('Prewitt 0.05');
subplot(2,2,3),imshow(p1),title('Prewitt 0.1');
subplot(2,2,4),imshow(p15),title('Prewitt 0.15');


%LENNA CON RUIDO GAUSSIANO
lennaGauss= imnoise(lenna, 'Gaussian', 0.3);

imcopyG = lennaGauss;
imcopyG = double(imcopyG);

% %Matriz del operador Prewitt
% mP1=[-1 -1 -1; 0 0 0; 1 1 1];
% mP2=[-1 0 -1; -1 0 1; -1 0 1]; 
% 
% %operador Prewitt
% cp1 = convn(imcopy,mP1);
% cp2 = convn(imcopy,mP2);
% cp3 = max(cp1,cp2);
% cp3 = uint8(cp3);
% imcopy = uint8(imcopy);

pdG = edge(imcopyG, 'Prewitt');
p05G = edge(imcopyG, 'Prewitt',0.05);
p1G = edge(imcopyG, 'Prewitt',0.1);
p15G = edge(imcopyG, 'Prewitt', 0.15);

figure('Name','Lenna Prewitt con Ruido Gaussiano');
subplot(2,2,1),imshow(pdG),title('Prewitt default');
subplot(2,2,2),imshow(p05G),title('Prewitt 0.05');
subplot(2,2,3),imshow(p1G),title('Prewitt 0.1');
subplot(2,2,4),imshow(p15G),title('Prewitt 0.15');


