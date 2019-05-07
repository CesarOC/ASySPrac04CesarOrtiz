%% Pr�ctica 4: Convoluci�n y Correlaci�n de se�ales en tiempo continuo y discreto
% Integrantes del equipo: Ortega Gonz�lez Mois�s Donaldo,Ortiz Colin Cesar Antonio, Zarate Murillo Jose Antonio
%% Introduccion: Algoritmos de integraci�n
%
% Existen distintos algoritmos de integracion
% Etc etc
%% Problema 1
% A continuacion la solucion del problema 1
x = @(t) exp(-t).*(t>=0 & t<=1);% Se declara la primer funci�n
h = @(t) t.*(t>=-1 & t<=1);% Se declara la segunda funci�n
n=0:1;% Intervalo valido de la primera funcion
m=-1:1;% Intervalo valido de la segunda funcion
convconm(x,h,n,m)
%%
% En la siguiente imagen se muestran las ecuaciones pertinentes a las
% funciones analiticas obtenidas de la convolucion
figure(2)
f=imread('1.jpg');
imshow(f)
%% Problema 2
% Debido a que las funciones analiticas son distintas, para superponer el
% resultado de la autocorrelaci�n con el codigo convconm y las graficas de las funciones
% analiticas previamente encontradas se necesit� crear convconm2, a
% continuaci�n la soluci�n del problema 2
x1=@(t) (heaviside(t)-2.*heaviside(t-3)+heaviside(t-4)).*(t>=0 & t<=4); %funcion dada
xd1=@(t) (heaviside(-t)-2.*heaviside(-t-3)+heaviside(-t-4)).*(t>=-4 &t<=0);% funcion invertida para hacer la correlacion a partir del codigo de convoluci�n
n=0:4;% definidas en el intervalo 0-4
m=-4:0;% invertida esta definida de -1-4
convconm2(x1,xd1,n,m)
%%
% En la siguiente imagen se muestran las ecuaciones pertinentes a las
% funciones analiticas obtenidas de la convolucion
figure(3)
Y=imread('2.jpg');
imshow(Y)
%% Problema 3
a=@(n) 3.*n;% formula de la se�al(c)
n=-3:3; % vector valido de la se�al,al evaluarla en a nos dara las alturas
b=@(n) -2.*n.*(n>=-2 & n<=0)+2.*n.*(n>=0 & n<=2);% se�al 2 (d)
convdisc([n;a(n)],[n;b(n)])
%% Problema 4
a=@(n) 3.*n;% formula se�al(c) la misma que en la convolucion
n=-3:3;
c=@(n) -2.*n.*(n>=-2 & n<=0)+2.*n.*(n>=0 & n<=2);;% se�al 2 (d) si la invierto(estructura de correlacion para hacer convoluci�n) es la misma, asi que la funcion no cambia;
convdisc([n;a(n)],[n;c(n)])
%% Problema 5
% A continuacion el codigo usando el comando conv que soluciona el problema
% 5( el cual es el mismo que el problema 3)
figure(4)
n=-5:5;
X1=[0 0 -9 -6 -3 0 3 6 9 0 0];%alturas de la se�al 1
X2=[0 0 0 4 2 0 2 4 0 0 0];%alturas de la se�al 2
X3=conv(X1,X2,'same');%utilizamos el comando conv

subplot(3,2,1);
stem(n,X1,'filled','g','linewidth',2);%graficamos la se�al(c)
title('X1[n]');
grid on
subplot(3,2,2);
stem(n,X2,'filled','r','linewidth',2);%graficamos la se�al (d)
title('X2[n-m]');
grid on
subplot(3,2,[3 6]);
long_fg_n=length(X1)+length(X2)-1;
stem(n,X3,'o','filled','linewidth',2);
title('Convoluci�n');
grid on
%% Referencias
% Lathi, B. P., (2005). Linear Systems and Signals. EUA: Oxford university Press