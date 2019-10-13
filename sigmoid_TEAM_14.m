function sortie = sigmoid_TEAM_14(X)
  
   for i=1:size(X,2)
    sortie(1,i)=1/(1+exp(-X(1,i)));
    end
endfunction
