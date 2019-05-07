function convconm(x,h,n,m)
  figure (1) % Se crea una figura para hacer las gráficas
  [j1,k1]=size(n);%n intervalo de x para la primera funcion
  [j2,k2]=size(m);%intervalo de x para la funcion 2
  
  dtau = 0.005; % Base de los rectangulos para realizar la integral 
  tau = n(j1)+m(j2)-1:dtau:n(k1)+m(k2)+4.5;% Intervalo de visualización del resultado
  ti = 0; % Indice para el vector de resultados
  tvec = n(j1)+m(j2)-.25:.1:n(k1)+m(k2)+1; % traslaciones de t, cuantas integrales se calculan  
  y = NaN*zeros(1, length (tvec)); % Resultados de acuerdo a cuantos t
  for t = tvec, % Cantidad de traslaciones
      ti = ti+1; % Indice para guardar el resultado (indice del tiempo)
      xh = x(t-tau).*h(tau); % resultado de la multiplicación 
      lxh = length(xh); % longitud del resultado
      y(ti) = sum(xh.*dtau); % Base por altura, aproximación de la integral
      subplot (2,1,1), % gráfica de 2 x 1 (primera)
      plot(tau, h(tau), 'r-', tau, x(t-tau), 'g--', t, 0, 'ob'); %graficas de as funciones originales
      axis ([tau(1) tau(end) -1.5 1.5]); % límites de los ejes
      patch([tau(1:end-1); tau(1:end-1); tau(2:end); tau(2:end)],...
      [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
      [.8 .8 .8], 'edgecolor', 'none');
      xlabel('\tau'); % Texto del eje X
      title('Convolución')
      legend('h(\tau)', 'x(t-\tau)','t','h(\tau)x(t-\tau)')% Caja de Texto  
      subplot (2, 1, 2)  % gráfica de 2 x 1 (segunda)
      t1=-1:0.01:0;
      t2=0:0.01:1;
      t3=1:0.01:2;
      plot(t2,(1.5^2/pi)*(1-cos(pi*t2)))
      plot(t3,(1.5/pi)*(cos(pi*t3)-1))
      plot (tvec, y, 'k', tvec (ti), y(ti), 'ok',t1,2.*exp(-1-t1)+t1-1,'y',t2,-t2.*exp(-1)+2.*exp(-1)+t2-1,'m',t3,-t3.*exp(-1)+2.*exp(-1),'g');
      xlabel ('t'); 
      legend('convolución','t', '2.*exp(-1-t1)+t1-1','-t2.*exp(-1)+2.*exp(-1)+t2-1','-t3.*exp(-1)+2.*exp(-1)')
      ylabel ('y(t) = \int h(\tau)x(t-\tau) d\tau');
      axis ([tau(1) tau(end) -1.0 1]); % límites del eje
      grid; % malla
      drawnow; % efecto de movimiento continuo
  end
  end