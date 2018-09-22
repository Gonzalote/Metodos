function graph1 ()
  
  M = 100000;
  tf = 2;
  h = tf / M;
  y0 = [0,0,3,4];
  
  tiempo = cputime;
  
  R = euler(h, y0, M);
  
  CPUt = cputime - tiempo
  
  figure(1), hold on;
  
  xe = R(:,1)';
  ye = R(:,2)';
  ze = xe .* ye;
  plot3(xe, ye, ze, 'r', 'LineWidth',3);
 
  % Para comparar con ODEs resueltas por octave %
  
  t = linspace(0, tf, M);
  S = lsode("f", y0, t);
  % xo = S(:,1);
  % yo = S(:,2);
  % zo = xo .* yo;
  % plot3(xo, yo, zo, 'b', 'LineWidth',3);
  
  tx = linspace(-10, 10, 40);  
  tz = tx'*tx;
  mesh(tx, tx, tz);

  hold off;
  
  % Calculo del error absoluto %
  e = abs(R .- S);
  
  figure(2), hold on;
  plot(t, e(:,1));
  
  figure(3), hold on;
  plot(t, e(:,2));
  
  
endfunction
