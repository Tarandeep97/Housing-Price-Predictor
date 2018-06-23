function plotData(x,y)
%PLOTDATA plot the data points received into a new figure

figure; %opens a new figure window

%Code to plot Data
plot(x,y,'rx','Markersize',10);
xlabel("Population in 10,000s");
ylabel("Profit in $10,000s");


end