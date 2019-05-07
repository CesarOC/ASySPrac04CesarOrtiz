clc
clear all
close all

n=-5:5;
X1=[0 0 -9 -6 -3 0 3 6 9 0 0];%alturas de la señal 1
X2=[0 0 0 4 2 0 2 4 0 0 0];%alturas de la señal 2
X3=conv(X1,X2,'same');%utilizamos el comando conv

subplot(3,2,1);
stem(n,X1,'filled','g','linewidth',2);%graficamos la señal(c)
title('X1[n]');
grid on
subplot(3,2,2);
stem(n,X2,'filled','r','linewidth',2);%graficamos la señal (d)
title('X2[n]');
grid on
subplot(3,2,[3 6]);
long_fg_n=length(X1)+length(X2)-1;
stem(n,X3,'o','filled','linewidth',2);
title('Convolución');
grid on