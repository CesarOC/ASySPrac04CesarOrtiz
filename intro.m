%Introducción: Métodos Numéricos
%Geométricamente entendemos la integración como una operación que nos 
%permite conocer el área que se forma entre una función y el eje de las 
%absisas dentro de los límites que se definan. La mayor parte de las
%operaciones de integración requieren que encontrar una antiderivada; dicho
%proceso se logra mediante distintos métodos de integración que se han
%definido con el timepo. Sin embargo existen algunas funciones para las
%cuáles no es posible encontrar su antiderivada, pues no existen métodos de
%integración que puedan aplicarse. En esos casos se ocupan los métodos
%numéricos, los cuáles que si bien no nos ayudan a conocer la antiderivada
%de la función, nos permiten aproximar el área bajo la curva dentro de los
%mismos límites.
%Métodos de Newton-Coles
%Estos se basan en la idea de que se puede aproximar cualquier función a
%un polinomio, si se suma un término de error. Existen varios submétodos
%que se eligen según el grado del polinomio a trabajar.

%Trapecio se refiere al uso un polinomio de grado uno y se opera con el uso
%de la siguiente fórmula
trapecio=imread('trapecio.png');
imshow(trapecio);
%Simpson trabaja con polinomios de grado dos y ocupa la siguiente fórmula.
simp=imread('simp.png');
imshow(simp);
%Simpson 3/8 trabaja con polinomios de grado 3 .
simp38=imread('38simp.png');
imshow(simp38);
%Compuesta. Se trata de aplicaciones de las formas pasadas cuando se divide
%a la señal en pequeños segmentos, a cada uno de los cuales se aplican los
%métodos anteriores, resultanto las siguientes fórmulas para cada caso: 
trapComp=imread('trapeciocomp.png');
imshow(trapComp);
simpComp=imread('compSimp.png');
imshow(trapComp);
%Cuadratura Gaussiana
gauss=imread('Gauss.png');
imshow(gauss);