function convconm2(x,h,n,m)
  figure (1) % Se crea una figura para hacer las gráficas
  [j1,k1]=size(n);%n intervalo de x para la primera funcion
  [j2,k2]=size(m);%intervalo de x para la funcion 2
  
  dtau = 0.005; % Base de los rectangulos para realizar la integral 
  tau = n(j1)+m(j2)-1:dtau:n(k1)+m(k2)+5.5;% Intervalo de visualización del resultado
  ti = 0; % Indice para el vector de resultados
  tvec = n(j1)+m(j2)-.25:.1:n(k1)+m(k2)+5.5; % traslaciones de t, cuantas integrales se calculan  
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
      title('autocorrelación')
      legend('h(\tau)', 'x(t-\tau)','t','h(\tau)x(t-\tau)')% Caja de Texto  
      subplot (2, 1, 2)  % gráfica de 2 x 1 (segunda)
      t1=-4:0.01:-3;
      t2=-3:0.01:-1;
      t3=-1:0.01:0;
      t4=0:0.01:1;
      t5=1:0.01:3;
      t6=3:0.01:4;
      plot (tvec, y, 'k', tvec (ti), y(ti), 'ok',t1,-t1-4,'y',t2,t2+2,'m',t3,3.*t3+4,'g',t4,-3.*t4+4,'b',t5,-t5+2,'r',t6,t6-4,'c');
      xlabel ('t'); 
      ylabel ('y(t) = \int h(\tau)x(t-\tau) d\tau');
      legend('autocorrelación', 't','-t1-4','t2+2','3.*t3+4','-3.*t4+4','-t5+2','t6-4')
      axis ([tau(1) tau(end) -1.2 4.2]); % límites del eje
      grid; % malla
      drawnow; % efecto de movimiento continuo
  end
  end