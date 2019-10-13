## Copyright (C) 2019 user
## 
function [theta,cost] = gradientDescent(X, Y, theta, alpha, num_iters)

m = length(Y); % number of training examples

J_history = zeros(num_iters, 1);

theta_history = theta;



for iter = 1:num_iters

    h = sigmoid(X*theta);

    grad = (X'*(h - Y))/m;

    theta = theta - alpha*grad;  
    cost(iter) = Cost(theta,X,Y);
end

