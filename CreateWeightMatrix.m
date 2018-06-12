function w = CreateWeightMatrix(patterns)
    N = size(patterns,2)
    for i = 1:N
        for j = 1:N
            if (i ~= j)
                w(i,j) = (patterns(1:end,i).')*patterns(1:end,j);
            end
        end
    end
    w = w./N;
end






               