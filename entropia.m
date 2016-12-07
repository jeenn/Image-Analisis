%Esta función calcula la entropia a partir del histograma de una imagen 
%---Recibe
%histograma:histograma de la imagen en forma de vector columna,el tipo de
%vector poder castearse a double
%---Regresa
%e:el cáclulo de la entropía tipo double 
function [e]=entropia(histograma)
    %casteao a double
    histograma=double(histograma);

    %inicializamos
    suma=0;

    %calculamos el total con la funcion sum que realiza la sumatoria de los
    %elementos de histograma
    total=sum(histograma);

    %Generamos un vector con las probabilidades de cada intensidad , el total
    %divide a cada elemento y lo guarda en el vetor px
    px=histograma/total;

    %Hacemos el cálculo de cada elemento y lo sumamos , siempre y cuando
    %px(i)sea diferente de 0 , para evtar el NaN provocado por querer calcular
    %el log de 0 
    for i=1:1:256
        if px(i)~=0
            suma=suma+((px(i))*log2(px(i)));
        end
    end

    %Por definición es - la Suma de el producto de la px(i)*log2(px(i))
    e=-suma;

end
