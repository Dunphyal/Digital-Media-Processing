function entropy = calcEntropy(Y)
    
    
    G = hist(Y(:),1:256);figure;bar(G);
    pixels = sum(G); % sums pixels to find total number
    entropy = 0;
    for r = 1:256
        prob = G(r)/pixels;
        if(prob ~= 0)
            entropy = entropy - prob.*log2(prob);
        end
    end
end

