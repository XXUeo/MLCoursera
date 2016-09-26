function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
%size(X) = (300,2)

for k = 1:K 
	%picking up all minimum foe each centroid.
    selectedIdx = find(idx == k); 
    %now selectedIdx is column vector. find() will return matched
    %element as vector.
    %size(selectedIdx)
    centroids(k, :) = mean(X(selectedIdx, :)) ;
    %try ex :
    %w = find(eye(2)) 
    %w = 1;4
    %gh=eye(4)
    %gh(w,:)
    %gh = [1,0,0,0:0,0,0,1]

end





% =============================================================


end

