function [out,x] =  periodic_bc( x,  nx)

    if(x < 0) 
         n   = 1 - (x/(nx+1));
        ixx = x + n * nx;

        x =   mod(ixx, nx);
        out = 1;
    elseif(x >= nx) 
        x = mod(x ,nx);
        out = 1;
    
         end
    end
  
