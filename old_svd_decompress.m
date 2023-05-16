% Function that takes in the three matrices from SVD and returns the decompression
% Parameters:
    % (U, S, V) - Expects the separated [U S V] generated from svd() on the original starting matrix
function [oldDecompressed] = old_svd_decompress(U, S, V)

    % Reconstructing the separated zeroed out matrices to a single
    % compressed matrix with only k singular values kept
    matrixReconstruct = U * S * V';
    
    oldDecompressed = matrixReconstruct;
end