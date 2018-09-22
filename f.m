function S = f(v)

% v = [u,v,p,q]

b = (-2)*v(3)*v(4);
a = 1 + v(1)*v(1) + v(2)*v(2);

S = [v(3),v(4),v(2)*b/a,v(1)*b/a];

endfunction