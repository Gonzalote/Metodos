function R = beuler(h, y0, M)
    R=zeros(M,4);
    
    R(1,:) = y0(1,:); %y0 es un vector 
    tk = 0;
    
    jac=zeros(4,4);
    jac(1,:)=[0,0,1,0];
    jac(2,:)=[0,0,0,1];
    
    for k = 1:(M-1)
        fk=f(tk, R(k,:));
        den=1+fk(1)*fk(1)+fk(2)*fk(2);
        jac(3,:)=[4*fk(1)*fk(2)*fk(3)*fk(4)/(den*den),-2*fk(3)*fk(4)*(1+fk(1)*fk(1)-fk(2)*fk(2))/(den*den),-2*fk(2)*fk(4)/den,-2*fk(2)*fk(3)/den];
        jac(4,:)=[-2*fk(3)*fk(4)*(1-fk(1)*fk(1)+fk(2)*fk(2))/(den*den),4*fk(1)*fk(2)*fk(3)*fk(4)/(den*den), -2*fk(1)*fk(4)/den,-2*fk(1)*fk(3)/den];
        
        yk=R(k,:)';
        yk1=yk-inv((eye(4)-h*jac))*transpose(transpose(yk)-R(k,:)-h*f(tk, yk));
        iters=0;
        while((norm(yk1-yk)>0.00001)&&iters<1000)
            yk=yk1;
            yk1=yk-inv((eye(4)-h*jac))*transpose(transpose(yk)-R(k,:)-h*f(tk, yk));
            iters=iters+1;
        endwhile
        
        R(k+1,:) = R(k,:) + h*f(tk, yk1);
        tk = tk + h;
    endfor
endfunction