function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
tmp_sigmoid = sigmoid(X * theta);
J = ((-y)' * log(tmp_sigmoid) - (1 - y)' * log(1- tmp_sigmoid)) / m;
%grad = (sigmoid(X*theta)-y) .* (sigmoid(X*theta).^2) .* exp(-X * theta)

%grad = (X' * ((y + (1 -y) .* (tmp_sigmoid .^2) .* exp(-X * theta)) .* exp(-X * theta)))/m;
grad = X' * (tmp_sigmoid - y)/m;


% =============================================================

end
