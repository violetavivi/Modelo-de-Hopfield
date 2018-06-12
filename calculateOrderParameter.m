function m = calculateOrderParameter(firstPattern, state)
    N = length(state);
%     m = 0; %ATENTION
    m = firstPattern*(state.');
    m = m/N;
end
% 
%  for i = 1:N
%     m = firstPattern(i)*state(i) +m;
%     end