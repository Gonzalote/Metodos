function R = euler(h, y0, M)
    R=zeros(M,4);
    
    R(1,:) = y0(1,:); %y0 es un vector 
    
    for k = 1:(M-1)
        R(k+1,:) = R(k,:) + h*f(R(k,:));
    endfor
endfunction