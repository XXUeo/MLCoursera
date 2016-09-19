function W = randInitializeWeights(L_in, L_out)
%RANDINITIALIZEWEIGHTS Randomly initialize the weights of a layer with L_in
%incoming connections and L_out outgoing connections
%   W = RANDINITIALIZEWEIGHTS(L_in, L_out) randomly initializes the weights 
%   of a layer with L_in incoming connections and L_out outgoing 
%   connections. 
%
%   Note that W should be set to a matrix of size(L_out, 1 + L_in) as
%   the column row of W handles the "bias" terms
%

% You need to return the following variables correctly 
W = zeros(L_out, 1 + L_in);

% ====================== YOUR CODE HERE ======================
% Instructions: Initialize W randomly so that we break the symmetry while
%               training the neural network.
%
% Note: The first row of W corresponds to the parameters for the bias units
%

% setting initialization to random instead of zero is important in neural network
% because after each update, parameters corresponding to inputs going into each 
% of twn hidden units are identical.
%One effective strategy for choosing spsilon_init is to base it on the number of units in the network.
%A good choice of epsilon_init is epsilon_init = root 6 / ( rootL(in) + root(out)), where Lin = sl and Lout = sl+1 are
%Lin +Lout the number of units in the layers adjacent to theta(l).

epsilon_init = 0.12;
W = rand(L_out, 1 + L_in) * 2 * epsilon_init - epsilon_init





% =========================================================================

end
