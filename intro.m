%Introducci�n: M�todos Num�ricos
%Geom�tricamente entendemos la integraci�n como una operaci�n que nos 
%permite conocer el �rea que se forma entre una funci�n y el eje de las 
%absisas dentro de los l�mites que se definan. La mayor parte de las
%operaciones de integraci�n requieren que encontrar una antiderivada; dicho
%proceso se logra mediante distintos m�todos de integraci�n que se han
%definido con el timepo. Sin embargo existen algunas funciones para las
%cu�les no es posible encontrar su antiderivada, pues no existen m�todos de
%integraci�n que puedan aplicarse. En esos casos se ocupan los m�todos
%num�ricos, los cu�les que si bien no nos ayudan a conocer la antiderivada
%de la funci�n, nos permiten aproximar el �rea bajo la curva dentro de los
%mismos l�mites.
%M�todos de Newton-Coles
%Estos se basan en la idea de que se puede aproximar cualquier funci�n a
%un polinomio, si se suma un t�rmino de error. Existen varios subm�todos
%que se eligen seg�n el grado del polinomio a trabajar.

%Trapecio se refiere al uso un polinomio de grado uno y se opera con el uso
%de la siguiente f�rmula
trapecio=imread('trapecio.png');
imshow(trapecio);
%Simpson trabaja con polinomios de grado dos y ocupa la siguiente f�rmula.
simp=imread('simp.png');
imshow(simp);
%Simpson 3/8 trabaja con polinomios de grado 3 .
simp38=imread('38simp.png');
imshow(simp38);
%Compuesta. Se trata de aplicaciones de las formas pasadas cuando se divide
%a la se�al en peque�os segmentos, a cada uno de los cuales se aplican los
%m�todos anteriores, resultanto las siguientes f�rmulas para cada caso: 
trapComp=imread('trapeciocomp.png');
imshow(trapComp);
simpComp=imread('compSimp.png');
imshow(trapComp);
%Cuadratura Gaussiana
gauss=imread('Gauss.png');
imshow(gauss);