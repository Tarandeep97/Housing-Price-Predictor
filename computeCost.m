function J = computeCost(X,y,theta)
%computeCost computes cost function, which measures accuracy of 
%our hypothesis for training our dataset i.e how accurately our 
%parameter for linear regression fits for X

m = length(y); %no. of training examples

hyp = X * theta;
error = (hyp - y).^2;
J = 1 / (2 * m ) * sum(error);


end