function theta = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y);

for iter = 1:num_iters
    costFunctionJ(X, y, theta)

    predictions = X * theta;
    theta(1) = theta(1) - alpha / m * sum(predictions - y);
    theta(2) = theta(2) - alpha / m * sum((predictions - y) .* X(:, 2));
end
