function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% featureN = size(X, 2);
% J = zeros(featureN, 1);
% X
% theta

%for i=1:featureN,
%  predictValues = X(:, i)*theta(i);   % no need for theta transpose, compute (mx3)*(3x1)
%  squareRootErrors = (predictValues - y) .^ 2;
%  J(i) = sum(squareRootErrors) / (2*m);
% end

J = sum((X * theta - y) .^ 2) / (2*m);

% =========================================================================

end
