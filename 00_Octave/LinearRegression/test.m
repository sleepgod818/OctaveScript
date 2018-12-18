clc;
clear;
%data = load('D:/Code/Data/ex1data1.txt');
%X = data(:,1);
%y = data(:,2);
X = 1:1:10;
X = X';
y = X.^3 + randn(length(X),1);
figure,
plot(X, y, 'r*', 'MarkerSize', 5); % 5控制*的大小

% x加了一列,变成 (97,2)
m = length(y);
X = [ones(m, 1), X];

% 初始化参数
theta = zeros(2, 1);

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;
% 梯度下降，找到最佳参数
theta = gradientDescent(X, y, theta, alpha, iterations);

hold on;
% keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off

