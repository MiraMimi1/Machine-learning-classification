function [poids21,poids22] = backProbagation_TEAM_14(input, couche1,poids1,poids2,y,output)
    d_poids2=couche1'*(2*(y(1,:)-output).*sigmoid_deriv_TEAM_14(output))  ;
    d_poids1=input'*(((2*(y(1,:)-output).*sigmoid_deriv_TEAM_14(output))*poids2').*sigmoid_deriv_TEAM_14(couche1));
    
    poids22=poids2+d_poids2;
    poids21=poids1+d_poids1;
endfunction
