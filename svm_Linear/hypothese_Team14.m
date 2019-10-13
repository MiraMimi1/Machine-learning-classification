function [predictions] = hypothese_Team14(X, theta)
    h= X *theta ;
    predictions = sigmoid_Team14(h);
end