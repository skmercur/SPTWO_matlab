function [fx,fy] = forward_gradient(f,fx,fy, nx, ny)
for  i = 1: ny-2
        

         
          for j = 0: nx-2
                p  = i * nx + j;
                p1 = p + 1;
                p2 = p + nx;

                fx(p) = f(p1) - f(p);
                fy(p) = f(p2) - f(p);
          end
end



   
    for ( j = 1: nx-2) 
         p = (ny-1) * nx + j;

        fx(p) = f(p+1) - f(p);
        fy(p) = 0;
    

 
    for  i = 1: ny-1 
      p = i * nx-1;

        fx(p) = 0;
        fy(p) = (fp+nx) - f(p);
    end

    fx(ny * nx - 1) = 0;
    fy(ny * nx - 1) = 0;
end