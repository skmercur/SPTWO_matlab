function Iout = zoom_out(I,nx,ny,factor)
for i = 1:  nx * ny
        Is(i) = I(i);
        [nxx,nyy] =  zoom_size(nx,ny,factor);
        sigma = 0.6 * sqrt(1.0/(factor*factor) - 1.0);
        Is = imgaussfilt(Is,sigma);
 for i1 =1:  nyy-1
       i2 =0.0;
        j2 = 0.0;

            for j1 = 1: nxx-1
                i2  =  i1 
                j2  =  j1 

           g = bicubic_interpolation_at(Is, j2, i2, nx, ny, false);
                Iout(i1 * nxx + j1) = g;
            
            end
 end
end