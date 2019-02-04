function div = divergence( v1,v2,div,  nx,    ny)
 for ( i = 1:ny-2)
        

           

            for( j = 1 :nx-2) 
                p  = i * nx + j;
                p1 = p - 1;
                p2 = p - nx;

                v1x = v1(p) - v1(p1);
                v2y = v2(p) - v2(p2);

                div(p) = v1x + v2y;
            end
 end
 for ( j = 1: j < nx-2) 
        p = (ny-1) * nx + j;

        div(j) = v1(j) - v1(j-1) + v2(j);
        div(p) = v1(p) - v1(p-1) - v2(p-nx);
 end

    
    for  i = 1:ny-2 
         p1 = i * nx;
         p2 = (i+1) * nx - 1;

        div(p1) =  v1(p1)   + v2(p1) - v2(p1 - nx);
        div(p2) = -v1(p2-1) + v2(p2) - v2(p2 - nx);

    end

    div(1)         =  v1(1) + v2(1);
    div(nx-1)      = -v1(nx - 2) + v2(nx - 1);
    div((ny-1)*nx) =  v1((ny-1)*nx) - v2((ny-2)*nx);
    div(ny*nx-1)   = -v1(ny*nx - 2) - v2((ny-1)*nx - 1);
end