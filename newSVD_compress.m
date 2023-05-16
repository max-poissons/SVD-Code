% Function to get the three SVD matrices of a cast matrix and zero out k singular values
% Parameters:
    % castMatrix - Expects a matrix mapped using the new_matrix_casting.m
    % function
    % k - The number of singular values to keep from the matrix, 0 means
    % none are kept and when k = n, where n=columns of the matrix, all values are kept
function[U, S, V] = newSVD_compress(castMatrix, k)
    
    % SVD on the cast matrix passed as a parameter
    [U, S, V] = svd(castMatrix);

    % Zeroing out k singular values from the diagonal
    Diagonal = S;
    Diagonal(k+1:end,:) = 0; % Sets the values from row N+1 to end to 0
    Diagonal(:,k+1:end) = 0; % Sets the values from column N+1 to end to 0

    % Setting the original diagonal to be the zeroed out diagonal
    S = Diagonal;
end