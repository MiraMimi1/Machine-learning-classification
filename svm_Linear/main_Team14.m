%%Initialisation
clear; close all; clc;
%lecture des donnees d'entrainement
data = load('bdd.txt'); 

X = data(:,1:4);
y = data(:,5);

X_training = X(1:960,:);
y_training = y(1:960,:);

X_valid = X(961:1166,:); 
y_valid = y(961:1166,:);

X_test= X(1167:end,:); 
y_test= y(1167:end,:);

A=NormalisationAttributs_Team14(X_training);
B=NormalisationAttributs_Team14(X_test);
C=NormalisationAttributs_Team14(X_valid);

d=size(X_training,2);
theta = zeros(d+1,1);
num_iterations=10000;%iterations pour le GradirentDesAent
alpha = 0.005;%pas d'apprentissage
lambda=600;
m = length(y_training);
A= [ones(m,1),A]; %ajout de 1 a la colonne de X

J = Cost_Team14( A , y_training , theta,lambda);
[theta,J_history]=GradientDescent_Team14(A,y_training,theta,alpha,num_iterations,lambda);


fprintf('Cost  : %f\n', J_history);
fprintf('Cost theta : %f\n', theta);
fprintf('alpha : %f\n', alpha);
fprintf('nombre iterations: %f\n', num_iterations);
fprintf('Lambda : %f\n', lambda);

PlotCostBeforeGD_Team14(theta);

PlotCost_Team14(num_iterations,J_history);



 
