function [y] = gauss_jordan (x)    
    for n = 1:(length(x)-1)
        A = x(n,:);
        A = A/A(n);
        x(n,:) = A;
        for k = 1:(length(x)-1)
            if n~=k
                x(k,:) = A*(-1*x(k,n)) + x(k,:);
            end
        end
    end
    
    y = x(:,length(x))';
end