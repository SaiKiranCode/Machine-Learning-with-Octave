function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 0.3;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

min=10000000;
m=size(X,1);
n=size(X,2);
Xt=X;
for i=1:m-1
  Xt=[Xt;X];
endfor
L=X(1,:);
for o=1:m-1
  L=[L;X(1,:)];
endfor
for j=2:m
  for k=1:m
    L=[L;X(j,:)];
  endfor
endfor
i=C;
j=sigma;
while(i<30)
  while(j<30)
 model= svmTrain(X, y, i, @(Xt,L) gaussianKernel(Xt, L, j)); 
    predictions = svmPredict(model, Xval);
     cost=mean(double(predictions ~= yval));
     if(cost<min)
        C=i;
        sigma=j;
        min=cost;
      endif
    i=i*3;
    j=j*3;    
    
  endwhile
  endwhile





% =========================================================================

end
