% Function that returns Rank(k) of a matrix using the new SVD approach
% Parameters:
    % matrix: expects a matrix of double
    % k: number of singular values to keep
function [rank_k] = old_rank_k(matrix, k)
    % Takes passed matrix and performs SVD on it
    [U, S, V] = oldSVD_compress(matrix, k);

    % Reconstructing the passed matrix after removing k singular values from SVD
    decompressed = old_svd_decompress(U, S, V);

    % Getting the 2-norm of the passed matrix and the reconstructed matrix
    norm = matrix_norm(matrix, decompressed);

    % Scaling it to the size of the matrix passed, want close to 0
        % Note that if scaling is not done then it merely increases the rank(k)'s of both equally
    rank_k = norm/((size(matrix,1))*(size(matrix,2)));
    %rank_k = norm;
end