function J = gaussian_blur(I, sigma, N, flag)

x = -(N/2):(N/2);
h1=exp(-x.^2/(2*sigma^2));
h1=h1./sum(h1(:));
h2 = (h1)';
h3 = h1.*h2;
disp(h3);

    if(strcmp(flag, "combined"))
        J = conv2(single(I), single(h3), 'same');
    end

    if(strcmp(flag, "combined")  ~= 1)
        K = conv2(single(I), single(h1), 'same');
        J = conv2(single(K), single(h2), 'same');
    end

end