%%Initialisation
clear; close all; clc;

data = load('data_cla.txt');
X=data(1:823,1:4);
Y=data(1:823,5);
test=data(824:1098,1:4);
ytest=data(824:1098,5);
validation=data(1098:1372, 1:4);
yvalidation=data(1098:1372, 5);

nb_output=1;
Y=zeros(size(X,1),nb_output);#tableau pour le nombre de output
nb_couche_cache=7;
couche1 = zeros(1,nb_couche_cache); #tableau de la couche cachee


poids1= rand(size(X,2),nb_couche_cache); #generer aleatoirement le tableau des poids de la premiere couche
poids2 = rand(nb_couche_cache,nb_output); #generer aleatoirement le tableau des poifs de la 2eme couche
cost=[]

#entrainement
for k=1:10 #nombre iterration
for j=1:size(X,1) #nombre d'echantillon a parcourir 
  [couche1,output]= feedforward_TEAM_14(X(j,:),poids1,poids2); #caclule du output 'hypothese' avec les poid en entrer
  
  [poids1,poids2]=backProbagation_TEAM_14(X(j,:), couche1,poids1,poids2,Y(j,:),output); #modifier les poids en fonctions du output trouve
  cost=[cost;(sum(Y(j,:)-output)^2)];
end
end
w=round(sigmoid_TEAM_14(X * poids1));
printf('Pourcentage de precesion est : %f\n',(mean(w==Y))*100);
test1=round(sigmoid_TEAM_14(test * poids1));
validation1=round(sigmoid_TEAM_14(validation * poids1));
printf('Pourcentage de precesion est : %f\n',(mean(w==Y))*100);
printf('Pourcentage de precesion est : %f\n',(mean(w==Y))*100);
printf('Pourcentage de test est : %f\n',(mean(test1==ytest))*100);
printf('Pourcentage de validation est : %f\n',(mean(validation1==yvalidation))*100);
#plot(cost,'+')
#test de RN en executant le fichier test
