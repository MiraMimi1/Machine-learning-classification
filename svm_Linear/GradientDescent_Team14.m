function [theta, J_history]=GradientDescent_Team14(X,y,theta,alpha,iterations,lambda)
m=length(y);
thetalen=length(theta);
tempVal = theta;
J_history=zeros(iterations,1);
    for i=1:iterations
        temp=(hypothese_Team14(X, theta) - y);
        for j=2:thetalen
        tempVal(j,1) = sum(temp.*X(:,j));
        end 
        theta(1)=theta(1)-(alpha/m)*sum(temp.*X(:,1));
        theta = theta*(1-(alpha*lambda/m)) -(alpha/m)*tempVal;
        J_history(i,1) = Cost_Team14(X,y,theta,lambda);
    end
    disp(J_history(iterations,1));
end