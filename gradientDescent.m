function [theta,J_history] = gradientDescent( X , y, theta, alpha , num_iters )

%gradientDescent function finds appropriate parameter that fits perfectly our training examples

m = length(y); %no. of training examples
J_history  = zeros(num_iters,1);

for iter = 1:num_iters
    
    hyp = X * theta;
    grad = (X' * (hyp - y))/m;
    theta = theta - alpha * grad;
    
    J_history(iter) = computeCost(X , y, theta);
    
end

 