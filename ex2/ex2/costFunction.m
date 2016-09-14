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
% here 3*1 vector
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
% it goes with exponential
sig = sigmoid(X * theta);


J = (1/m) * (-y' * log(sig) - (1 - y') * log(1 - sig));
% forloop has aleady done with y'. sigma and x(i) are omitted.
%each time y' is activated so loop is working.
grad = (1/m) * (X' * (sig - y));

% =============================================================

end
