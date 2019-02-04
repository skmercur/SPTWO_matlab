function [out,x] =  neumann_bc(x,  nx)

    if(x < 0) 
        x = 0;
        out = 1;
    elseif (x >= nx) 
        x = nx - 1;
        out = 1;
         end

    end