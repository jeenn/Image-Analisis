clear all  %#ok<CLALL>
close all

%Leemos la imagen y la guardamos en una matriz llamada GRAY
baboon=imread('baboon.BMP');
figure('Name','Imagen');
imshow(baboon);

%Convirtiendo imagen de baboon a escala de grises
grayBaboon=rgb2gray(baboon);

%Apartamos el canal R y el resultado lo guardamos en una matriz llamada R
%R=RGB(:,:,1);
%Apartamaos el canal G y el resultado lo guardamos en una matriz llamada G
%G=RGB(:,:,2);
%Apartamos el canal B y el resultado lo guardamos en una matriz llamada B
%B=RGB(:,:,3);
%Obtenemos el histograma de R

%--------------HISTOGRAMA--------------
%HistogramaR=imhist(R);
%Obtenemos el histograma de G
%HistogramaG=imhist(G);
%Obtenemos el histograma de B
%HistogramaB=imhist(B);
%Obtenemos el histograma de gray
grayHist=imhist(grayBaboon);


%--------------ENTROPIA--------------

%Funcion de MatLab de entropia
%E=entropy(R);

%Entropia del canal rojo
%entropiaRojo=entropia(HistogramaR);

%Entropia del canal verde
%entropiaVerde=entropia(HistogramaG);

%Entropia del canal azul
%entropiaAzul=entropia(HistogramaB);

%Entropia de la imagen con promedio de escala de grises
entropiaGris=entropia(grayHist);
%disp(entropiaGris);

fprintf('Entropia de baboon: %f \n' ,entropiaGris)
fprintf('\n');

%--------------ENERGÍA--------------

%Energía blanco y negro
energiaGris=energia(grayHist);
%disp(energiaGris);
fprintf('Energía de baboon: %f \n' ,energiaGris);
