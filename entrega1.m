function entrega1 ()

h = input("ingrese incremento (h)");
M = input("ingrese cantidad de iteraciones (M)");
y0 = input("ingrese valores iniciales (y0)");

R = euler(h, y0, M);
disp(R);

endfunction