function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

prediction=X*theta;
 J=J+(1/(2*m))*sum((prediction-y).^2);
 for iter2=2:size(theta,1)
  J=J+((lambda)/(2*m))*sum(theta(iter2).^2);
endfor

grad=grad+((1/m)*sum((prediction-y).*X))';
for iter3=2:size(theta,1)
  grad(iter3,1)=grad(iter3,1)+(lambda/m)*theta(iter3,1);
endfor






% =========================================================================

grad = grad(:);

end
