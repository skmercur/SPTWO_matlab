function [dx,dy]=   centered_gradient(input,dx,dy, nx,ny)
for i = 1:ny-1
        for  j = 1:  nx-1
           k = round(i * nx + j)
            dx(k) = 0.5*(input(k+1) - input(k-1));
            dy(k) = 0.5*(input(k+nx) - input(k-nx));
        
        end
end
z = 1;
for  j = 2: nx-1
    
      dx(z) = 0.5*(input(z+1) - input(j-1));
        dy(z) = 0.5*(input(z+nx) - input(z));

    k = (ny - 1) * nx + z;

        dx(k) = 0.5*(input(k+1) - input(k-1));
        dy(k) = 0.5*(input(k) - input(k-nx));
        z = z +1;
end
for  i = 1: ny-1
        p = i * nx;
        dx(p) = 0.5*(input(p+1) - input(p));
        dy(p) = 0.5*(input(p+nx) - input(p-nx));

        k = (i+1) * nx - 1;

        dx(k) = 0.5*(input(k) - input(k-1));
        dy(k) = 0.5*(input(k+nx) - input(k-nx));
    

  
    dx(1) = 0.5*(input(2) - input(1));
    dy(1) = 0.5*(input(nx) - input(1));

    dx(nx-1) = 0.5*(input(nx-1) - input(nx-2));
    dy(nx-1) = 0.5*(input(2*nx-1) - input(nx-1));

    dx((ny-1)*nx) = 0.5*(input((ny-1)*nx + 1) - input((ny-1)*nx));
    dy((ny-1)*nx) = 0.5*(input((ny-1)*nx) - input((ny-2)*nx));

    dx(ny*nx-1) = 0.5*(input(ny*nx-1) - input(ny*nx-1-1));
    dy(ny*nx-1) = 0.5*(input(ny*nx-1) - input((ny-1)*nx-1));
end