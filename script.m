load ramenX.txt;
load ramenY.txt;

X = ramenX;
y = ramenY;
X1 = [ones(length(X),1) X];

theta = normalEqn(X1, y)

hold on;
scatter(ramenX, ramenY, 20)
plot(X1(:,2), X1*theta, '-')

% y = 92.242 + 0.0073234 * x
% if x = 194
% 92.242 + 0.0073234 * 194
% ans =  93.663
