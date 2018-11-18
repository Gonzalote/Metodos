function orden_error ()
   
  clf;
   
  M = 10;
  tf = 1;
  y0 = [6,4,-4,3];
  hvector = logspace(-3, -1, M);
  
  normaErrEuler = zeros(M, 1);
  normaErrBeuler = zeros(M, 1);
  normaErrTrapecio = zeros(M, 1);
  normaErrHeun = zeros(M, 1);
  normaErrRK4 = zeros(M, 1);
  
  opt = odeset("RelTol", 1/10^16, "AbsTol", 1/10^16);
  
  for i = 1:M
    h = hvector(i);
    n = floor(tf / h);
    timevector = 0:h:n*h; % vector de tiempos (de largo n+1) %
    [t, exacta] = ode45("f", timevector, y0, opt);
    
    yEuler = euler(h, y0, n+1);
    yBeuler = beuler(h, y0, n+1);
    yTrapecio = trapecio(h, y0, n+1);
    yHeun = heun(h, y0, n+1);
    yRK4 = rungekutta4(h, y0, n+1);
    
    normaErrEuler(i) = max(sqrt(sum((yEuler - exacta).^2,2)));
    normaErrBeuler(i) = max(sqrt(sum((yBeuler - exacta).^2,2)));
    normaErrTrapecio(i) = max(sqrt(sum((yTrapecio - exacta).^2,2)));
    normaErrHeun(i) = max(sqrt(sum((yHeun - exacta).^2,2)));
    normaErrRK4(i) = max(sqrt(sum((yRK4 - exacta).^2,2)));
    
   endfor
  
  
  loglog(hvector, normaErrEuler, "-b+",
         hvector, normaErrBeuler, "-ro",
         hvector, normaErrTrapecio, "-gs",
         hvector, normaErrHeun, "-md",
         hvector, normaErrRK4, "-k*");
  
  xlabel ("h");
  ylabel ("max||error(h)||");
  legend ("Euler hacia adelante", "Euler hacia atras", 
          "Tapecio", "Heun", "Runge-Kutta de orden 4", 
          "location", "southeast");

  
endfunction