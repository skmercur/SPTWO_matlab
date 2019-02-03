clc
clear
close all
PAR_DEFAULT_NPROC =  0;
PAR_DEFAULT_TAU    = 0.25;
PAR_DEFAULT_LAMBDA = 0.15;
PAR_DEFAULT_THETA  = 0.3;
PAR_DEFAULT_NSCALES =5;
PAR_DEFAULT_ZFACTOR =0.5;
PAR_DEFAULT_NWARPS = 5;
PAR_DEFAULT_EPSILON = 0.01;
useOracle = 'a';
lrdist = 0;
hBin = 0;
h02 = 0;
[width, height, nframes, nchannels, sequence] = ReadInputData('traffic.avi');
fparams.tau     = PAR_DEFAULT_TAU;
fparams.theta   = PAR_DEFAULT_THETA;
fparams.nscales = PAR_DEFAULT_NSCALES;
fparams.zfactor = PAR_DEFAULT_ZFACTOR;
fparams.warps  = PAR_DEFAULT_NWARPS;
fparams.epsilon = PAR_DEFAULT_EPSILON;
fparams.verbose = 0;
fparams.iflagMedian = 0;
N = 1 + log(hypot(width, height)/16.0) / log(1/fparams.zfactor);
%

