function [sortie] = sigmoid_deriv_TEAM_14(x)
  for i=1:size(x,2)
    sortie(1,i)=exp(-x(1,i))/((1+exp(-x(1,i)))^2);
    end
  
 
endfunction
