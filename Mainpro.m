%Intialization
clear ; close all ; clc

fprintf("==========Plotting Data==========\n")

data = load('Data1feature.txt');
X = data(:,1);
y = data(:,2);
m = length(y);

%Plotting Data

plotData(X,y);

fprintf("Program paused. Press enter to continue\n"); pause;

%Cost function
fprintf("==========Cost Function==========\n")
X = [ones(m,1) , data(:,1)]; %Adding a new column of ones to X 
theta = zeros(2,1);  %Intializing theta to zeroes

J = computeCost(X , y , theta);
fprintf("With theta = [0;0]...\n Cost = %.2f\n",J);

fprintf("Program Paused.Press enter to continue\n");pause;

fprintf("==========Gradient Descent==========\n")
iterations = 1500;
alpha = 0.01;

theta = gradientDescent(X, y, theta, alpha, iterations);
fprintf("Theta found by gradient descent\n")
fprintf("%f\n",theta);

%Predicting values for population size 80000

predict = [1 , 8] * theta;
fprintf("\nFor City with Population 80,000\n Predicted Price for House =$%f",predict*10000);














