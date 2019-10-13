## Copyright (C) 2019 user
## 

function [J]= Cost (theta,X,Y)
% Initialize some useful values
m = length(Y); % number of training examples
 
hx = sigmoid(X * theta);
J = sum(-Y' * log(hx) - (1 - Y')*log(1 - hx)) / m;
 
endfunction
