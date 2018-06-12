
function newstate = Update(state,w,chosenN)

        exponent = -4*(w(chosenN,1:end)*(state.'));
        prob = 1/(1 + exp(exponent));
        if (rand < prob)
            newstate = 1;
        else
            newstate = -1;
        end
            
 end