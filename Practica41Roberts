clear all  %#ok<CLALL>
close all

%LENNA SIMPLE
lenna=imread('Lenna.BMP'); %Leemos la imagen y la guardamos en una matriz llamada lenna
imcopy = lenna;
imcopy = double(imcopy);

% %Matriz del operador Roberts
% mR1=[-1 0;0 1];
% mR2=[0 -1;1 0]; 
% 
% %operador Roberts
% imcopy = double(imcopy);
% cr1 = convn(imcopy,mR1);
% cr2 = convn(imcopy,mR2);
% cr3 = max(cr1,cr2);
% imcopy = uint8(imcopy);
% cr3 = uint8(cr3);

rd  = edge(imcopy, 'Roberts');
r05 = edge(imcopy, 'Roberts',0.05);
r1 = edge(imcopy, 'Roberts',0.1);
r15 = edge(imcopy, 'Roberts', 0.15);


imshow(lenna),title('Imagen Original');

figure('Name','Lenna Roberts');
subplot(2,2,1),imshow(rd),title('Roberts default');
subplot(2,2,2),imshow(r05),title('Roberts 0.05');
subplot(2,2,3),imshow(r1),title('Roberts 0.1');
subplot(2,2,4),imshow(r15),title('Roberts 0.15');


%LENNA CON RUIDO GAUSSIANO
lennaGauss= imnoise(lenna, 'Gaussian', 0.3);

imcopyG = lennaGauss;
imcopyG = double(imcopyG);

% %Matriz del operador Roberts
% mR1=[-1 0;0 1];
% mR2=[0 -1;1 0]; 
%  
% %operador Roberts
% imcopy = double(imcopy);
% cr1 = convn(imcopy,mR1);
% cr2 = convn(imcopy,mR2);
% cr3 = max(cr1,cr2);
% imcopy = uint8(imcopy);
% cr3 = uint8(cr3);

rdG = edge(imcopyG, 'Roberts');
r05G = edge(imcopyG, 'Roberts',0.05);
r1G = edge(imcopyG, 'Roberts',0.1);
r15G = edge(imcopyG, 'Roberts', 0.15);

figure('Name','Lenna Roberts con Ruido Gaussiano');
subplot(2,2,1),imshow(rdG),title('Prewitt default');
subplot(2,2,2),imshow(r05G),title('Prewitt 0.05');
subplot(2,2,3),imshow(r1G),title('Prewitt 0.1');
subplot(2,2,4),imshow(r15G),title('Prewitt 0.15');





