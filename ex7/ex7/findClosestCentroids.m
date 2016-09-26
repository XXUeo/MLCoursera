function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
%size(idx) = (300,1)
%K = 3
%K = number of centroids
%size(X) = (300,2)
%size(centroids) = (3,2)
%size(X,1) = 300
%If given a second argument,
%size will return the size of the corresponding dimension
for i = 1: size(X,1)
  closestC = zeros(K,1);

  for k = 1:K
  	closestC(k) = sumsq(X(i,:) - centroids(k,:));
  end;
   [minCentroid, minIndex] = min(closestC);

    idx(i) = minIndex;
end;
%size(idx) = (300,1); index of centroid coressponds to each min.
%finding which cluster centroid is the closest to each examle.
%out put the closest exapmle to closest centroid.



% =============================================================

end

