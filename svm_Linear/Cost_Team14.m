%cost avec regularisation
function J= Cost_Team14(X,y,theta,lambda)
    %calculer du cout
    h=hypothese_Team14(X, theta);
      % c=1/lambda
     J=(1/lambda) * sum(-y' *log(h) - ((1-y')*log(1-h))) + (1 / 2 ) * sum(theta(2:end) .^ 2); 
end