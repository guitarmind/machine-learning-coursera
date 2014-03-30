function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

% X
% theta
z = X * theta;
predictV = sigmoid(z);

thetaExcludFirstOne = theta(2:size(theta));
newTheta = [0; thetaExcludFirstOne];

J = (1/m) * (-y' * log(predictV) - (1 - y)' * log(1 - predictV)) ...
       + (lambda/(2*m)) * newTheta' * newTheta;

grad = (1/m) * (X' * (predictV - y ) + lambda * newTheta);

%exampleN = 1:size(X:1);
%thetaN = 1:size(theta:1);
%for i = exampleN,
%  for j = thetaN,
%    if i == 1,
%      J(j) = (1/m) * sum(-y(i) .* log(predictV(i)) .- (1-y(i)) .* log(1 - predictV(i)));
%      grad(j) = (1/m) * (X' * predictV - y));
      % grad(j) = (1/m) * (X' * predictV - y));
%    else
%      J(j) = (1/m) * sum(-y .* log(predictV) .- (1-y) .* log(1 - predictV)) ...
%            + (lambda/(2*m)) * sum(theta(j) .^ 2);
%      grad(j) = (1/m) * (X' * (predictV - y)) + (lambda/m) * theta(j);
%    end
%  end
%end


% =============================================================

end
