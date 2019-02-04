function ComputeFlow(iImages,ii,  jj,fparams,useOracle)
if(useOracle)
    aImages = iImages; 
   gray1 = rgb2gray(aImages{ii});
else
     gray1 = rgb2gray(iImages{ii});
   
end
if(useOracle)
    aImages = iImages; 
    gray2 = rgb2gray(aImages{jj});
   
else
    gray2 = rgb2gray(iImages{jj});
     imshow(gray2);
     

end
