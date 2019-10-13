data = load('bdd.txt'); 

X = data(:,1:4);
y = data(:,5);

X_training = X(1:960,:);
y_training = y(1:960,:);

X_test = X(961:1166,:); 
y_test = y(961:1166,:);

X_valid= X(1167:end,:); 
y_valid= y(1167:end,:);

model = fitcsvm(X_training, y_training, 'KernelFunction', 'rbf');

y_pred = predict(model, X_test);

percent_valid = mean(double(y_pred == y_test))*100;

y_predval = predict(model, X_valid);

percent_training = mean(double(y_pred == y_valid))*100;



dlmwrite('prcent_valid.txt',precent_valid); %ecrire dans le fichier

