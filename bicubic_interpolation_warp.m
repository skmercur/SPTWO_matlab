function output =  bicubic_interpolation_warp(input, u,v, output,nx,ny,border_out )
for i = 1:ny
        
            p = 0;
             uu = 0.0;
             vv = 0.0;


            for j = 1 : nx
                p  = i * nx + j;
                uu = (j + u(p));
                vv =  (i + v(p));

               
                output(p) = bicubic_interpolation_at(input,uu, vv, nx, ny, border_out);
            end
end
end