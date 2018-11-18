function R = rungekutta4(h, y0, M)
    R=zeros(M,4);
    
    R(1,:) = y0(1,:); %y0 es un vector 
    tk = 0;
    
    for k = 1:(M-1)
        k1=f(tk, R(k,:));
        k2=f(tk + h/2, R(k,:) + h*k1/2);
        k3=f(tk + h/2, R(k,:) + h*k2/2);
        k4=f(tk + h, R(k,:) + h*k3);
        R(k+1,:) = R(k,:) + h*(k1+2*k2+2*k3+k4)/6;
        tk = tk + h;
    endfor
endfunction