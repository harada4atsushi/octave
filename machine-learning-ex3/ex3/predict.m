function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m, 1) X];
tmp_p = sigmoid(X * Theta1');
m_tmp_p = size(tmp_p, 1);
tmp_p = [ones(m_tmp_p, 1) tmp_p];
tmp_p =sigmoid(tmp_p * Theta2');

for i = 1:length(tmp_p)
  [v_max, v_imax] = max(tmp_p(i,:));
  p(i) = v_imax;
end
% =========================================================================


end
