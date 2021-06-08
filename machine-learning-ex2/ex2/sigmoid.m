function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


iter1=size(z,1);
iter2=size(z,2);
for iter3=1:iter1
  for iter4=1:iter2
    g(iter3,iter4)=g(iter3,iter4)+(1/(1+e^-z(iter3,iter4)));
  endfor
endfor



% =============================================================

end
