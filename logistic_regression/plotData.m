function plotData(X, y)

figure; hold on;

positive = find(y==1);
negative = find(y==0);

plot(X(positive, :), 'b+');
plot(X(negative, :), 'ro');

hold off;

end
