
p = 5;  %then 40
N = 200;
beta = 2;
maxIterations = 100000;
pickM = 100;
runs = 20;
newstate = ones(1,N);
patterns = ones(p,N);
m = zeros(maxIterations/pickM,runs);
mFinal = zeros(runs);
w = zeros(N,N);

%ini patterns
    for i = 1:p
        for j = 1:N
            if (rand < 0.5)
                 patterns(i,j) = -1*patterns(i,j);
            end
        end
    end
    
w = CreateWeightMatrix(patterns);
firstPattern = patterns(1,1:end); 

for i = 1:runs
        %feed with C1... Sj <- C1.
        state = patterns(1,1:end);
        indexM = 1;
    for j = 1:maxIterations %ie updates
        chosenN = randi([1,N]); 
        newstate = Update(state,w,chosenN);
        state(chosenN) = newstate;
        if (mod(j,pickM) == 0)
             maux = calculateOrderParameter(firstPattern, state);
             m(indexM,i)= maux;
             indexM = indexM +1;
        end
                
    end
    
end


