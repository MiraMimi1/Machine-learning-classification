%%Initialisation
clear; close all; clc;
%%load data
data = load('bdd.txt');
X=data(1:823, 1:4);
Y=data(1:823, 5);
test=data(824:1098, 1:4);
ytest=data(824:1098, 5);
validation=data(1098:1372, 1:4);
yvalidation=data(1098:1372, 5);
%%calculer le cost et gradient_descent
[m,n]= size(X);
%%Ajouter un terme d'interception à x et X_test
X = [ones(m, 1) X];
InitialTheta=zeros((n + 1), 1);
[J]=Cost(InitialTheta,X,Y); 
 %%============= Optimizing using Gradient Descent =============

alpha = 0.005;
num_iterations=1000;
[theta,J_new]= gradientDescent(X,Y,
InitialTheta,alpha,num_iterations);

% affichage de resulta

fprintf('Cost trouve par gradient Descent: %f\n', J_new(num_iterations));

fprintf('theta: \n');

fprintf(' %f \n', theta);
%% Plot de cost 
plot(1:length(J_new),J_new);
ylabel('J');
xlabel('Iterations');
title('le cout');
%% test
[h,v]= size(test);
test = [ones(h, 1) test];
[h1,v1]= size(validation);
validation = [ones(h1, 1) validation];
w = round(sigmoid(X * theta));
test1=round(sigmoid(test * theta));
validation1=round(sigmoid(validation * theta));
printf('Pourcentage de precesion est : %f\n',(mean(w==Y))*100);
printf('Pourcentage de test est : %f\n',(mean(test1==ytest))*100);
printf('Pourcentage de validation est : %f\n',(mean(validation1==yvalidation))*100);