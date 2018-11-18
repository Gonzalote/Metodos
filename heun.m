function R = heun(h, y0, M)
    R=zeros(M,4);
    
    R(1,:) = y0(1,:); %y0 es un vector 
    tk = 0;
    
    for k = 1:(M-1)
        yk=R(k,:);
        R(k+1,:) = yk + (h/2)*(f(tk, yk) + f(tk + h, yk + h*f(tk, yk)));
        tk = tk + h;
    endfor
    
endfunction