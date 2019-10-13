function Shuffle_Team14()
data=load('data.txt');
x=data(:,1:5);
row =length(x);
shuffle= randperm(row); %génére des arrangements aléatoires
result = x(shuffle, :); %nouvelle Dataset avec 
dlmwrite('NewData.txt',result); %ecrire dans le fichier
end
