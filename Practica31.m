clear all  %#ok<CLALL>
close all

%Leemos la imagen y la guardamos en una matriz llamada baboon
baboon=imread('baboon.BMP');

figure('Name','Original');
imshow(baboon); %Imagen sin modificaciones

baboonRuido= imnoise(baboon, 'Gaussian', 0.3);

figure('Name','Ruido Gaussiano'); 
imshow(baboonRuido); %Imagen con Ruido Gaussiano

f1=fspecial('average',[5 5]);
aritmetico5=imfilter(baboonRuido,f1);

figure('Name','Promedio Aritmético'); %Imagen con filtro "Promedio Aritmético" [5 5]
imshow(aritmetico5);

f2=fspecial('average',[3 3]);
aritmetico3=imfilter(baboonRuido,f2);

figure('Name','Promedio Aritmético'); %Imagen con filtro "Promedio Aritmético" [3 3]
imshow(aritmetico5);
