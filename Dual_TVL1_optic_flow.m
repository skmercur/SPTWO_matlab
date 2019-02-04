function Dual_TVL1_optic_flow(I0,I1,u1,u2,height,width,params)
size = height * width;
tau = params.tau;
    lambda = params.lambda; 
    theta = params.theta; 
   nscales = params.nscales; 
    zfactor = params.zfactor; 
 warps = params.warps;  
   epsilon = params.epsilon; 
     verbose = params.verbose; 
  iflagMedian = params.iflagMedian;
   u1s = u1;
    u2s = u2;
    nx  = width;
    ny  = height;
    I0s = imgaussfilt(I0,0.8);
    I1s = imgaussfilt(I1,0.8);
    
end