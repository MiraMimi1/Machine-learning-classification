function [couche1,output] = feedforward_TEAM_14 (input , poids1,poids2)
    couche1 = sigmoid_TEAM_14(input*poids1);
    output= sigmoid_TEAM_14(couche1*poids2);
    
endfunction
