function MSE = calcMSE(Y1,Y2)
    
    Y1 = Y1(:); Y2 = Y2(:); %vectorize inputs
    MSE = mean((Y1-Y2).^2);
      
end