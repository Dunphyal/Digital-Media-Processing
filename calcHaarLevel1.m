function H = calcHaarLevel1(Y,n)
    [rows, columns] = size(Y);
    
    if (mod(size(Y,1),2) ~= 0)
        error('height must be multiple of 2');
    end
    if (mod(size(Y,2),2) ~= 0)
        error('width must be multiple of 2');
    end

    hx = size(Y,2)/2; % half of x-axis
    hy = size(Y,1)/2; % half of y-axis
   
    H = zeros(size(Y));
    Transform = ([1 1;1 -1]/sqrt(2));
    
    for row = 1 : 2 : rows
        for col = 1 : 2 : columns
            j = Y(row:row+1, col:col+1);
            d = Transform * j * Transform.^Transform; %premultiply columns by T, postmultiply by T^T
            H(row:row+1, col:col+1) = d;
        end
    end
    
    lolo = H(1:2:rows, 1:2:columns); % A
    if (n>1)
       lolo = calcHaarLevel1(lolo,n-1); 
    end
    hilo = H(1:2:rows, 2:2:columns); % B
    lohi = H(2:2:rows, 1:2:columns); % C
    hihi = H(2:2:rows, 2:2:columns); % D
    
    % Brightened for ease of understanding
    H(1:hy, 1:hx) = lolo;
    H(1:hy, hx + (1:hx)) = hilo;
    H(hy + (1:hy), 1:hx) = lohi;
    H(hy + (1:hy), hx + (1:hx)) = hihi;
    figure; imshow(H/256);
end 
