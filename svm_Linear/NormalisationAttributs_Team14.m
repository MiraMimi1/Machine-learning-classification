function [XNorm, mu, stddev] = NormalisationAttributs_Team14(X)
XNorm = X;
mu = zeros(1, size(X, 2));
stddev = zeros(1, size(X, 2)); 
for i=1:size(mu,2)
    mu(1,i) = mean(X(:,i)); % calculer la moyenne
    stddev(1,i) = std(X(:,i)); % calculer la deviation standard Dataset
    XNorm(:,i) = (X(:,i)-mu(1,i))/stddev(1,i); %calculer les instance - la moyenne /la deviation
end