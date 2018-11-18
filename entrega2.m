function entrega2 ()
   
  M = 100000;
  tf = 1;
  h = tf / M;
  y0 = [1,1,1,1];
  
  tiempo = cputime();
  R_euler = euler(h, y0, M);
  tiempo_euler = cputime() - tiempo
  
  tiempo = cputime();
  R_heun = heun(h, y0, M);
  tiempo_heun = cputime() - tiempo
  
  tiempo = cputime();
  R_beuler = beuler(h, y0, M);
  tiempo_beuler = cputime() - tiempo
  
  tiempo = cputime();
  R_trapecio = trapecio(h, y0, M);
  tiempo_trapecio = cputime() - tiempo
  
  tiempo = cputime();
  R_rungekutta4 = rungekutta4(h, y0, M);
  tiempo_rungekutta4 = cputime() - tiempo
  
  
  t = linspace(0, tf, M);
  
  [aux, S] = ode45("f", t, y0);
  
  
  % Calculo del error global %
  e_euler = abs(R_euler .- S);
  normae_euler = sqrt(sum(e_euler.^2,2));
  E_euler = max(normae_euler)
  
  e_heun = abs(R_heun .- S);
  normae_heun = sqrt(sum(e_heun.^2,2));
  E_heun = max(normae_heun)
  
  e_beuler = abs(R_beuler .- S);
  normae_beuler = sqrt(sum(e_beuler.^2,2));
  E_beuler = max(normae_beuler)
  
  e_trapecio = abs(R_trapecio .- S);
  normae_trapecio = sqrt(sum(e_trapecio.^2,2));
  E_trapecio = max(normae_trapecio)
  
  e_rungekutta4 = abs(R_rungekutta4 .- S);
  normae_rungekutta4 = sqrt(sum(e_rungekutta4.^2,2));
  E_rungekutta4 = max(normae_rungekutta4)
  
  
  clf;
  plot(t, normae_euler, 'r',
       t, normae_heun, 'g',
       t, normae_beuler, 'b',
       t, normae_trapecio, 'm',
       t, normae_rungekutta4, 'k');
       
  xlabel ("t");
  ylabel ("||error(h)||");
  legend ("Euler hacia adelante", "Heun", "Euler hacia atrás", 
          "Tapecio", "Runge-Kutta de orden 4", 
          "location", "northwest");
  
  
endfunction
