% Function that returns Rank(k), or 2-Norm difference, of a matrix using the new SVD approach
% Parameters:
    % matrix: expects the cast matrix
    % k: number of singular values to keep
function [rank_k] = new_rank_k(original_matrix, k)
    
    % Map matrix to get mangitude 1 for all entries
    cast_matrix = new_matrix_casting(original_matrix);

    % Takes mapped matrix and performs SVD on it
    [U, S, V] = newSVD_compress(cast_matrix, k);

    % Reconstructing the mapped matrix after removing k singular values from SVD
    decompressed = new_svd_decompress(U, S, V);

    % Getting the Rank(k) or 2-norm of the original passed matrix and the reconstructed matrix
    norm = matrix_norm(original_matrix, decompressed);
    

    % Scaling it to the size of the matrix passed
        % Note that if scaling is not done then it merely increases the
        % rank(k)'s of both equally
    rank_k = norm/((size(original_matrix,1))*(size(original_matrix,2)));
    %rank_k = norm;
    %disp(rank_k);
end