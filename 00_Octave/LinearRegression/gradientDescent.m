
function theta = gradientDescent(X, y, theta, alpha, num_iters)


m = length(y);% 样本数量

for iter = 1:num_iters

    H = X * theta;
    %(97,2)*(2*1)=(97,1)
    Sum = [0 ; 0]; %(2,1)，记录偏导，求和

    % theta_0更新
    for i = 1 : m
        Sum(1,1) = Sum(1,1) + (H(i) - y(i));
    end

    % theta_1更新
    for i = 1 : m
        Sum(2,1) = Sum(2,1) + (H(i) - y(i)) * X(i,2)';
    end

    theta = theta - (alpha * Sum) / m;

end
end
