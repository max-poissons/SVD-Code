% Function that takes in the three matrices from SVD and returns the uncast-decompression
% Parameters:
    % (U, D, V) - Expects the separated [U S V] generated from svd() on the
    % mapped matrix
function[decompressed] = new_svd_decompress(U, S, V)
    % Reconstructing the (new) original matrix from the passed SVD matrices
    matrixReconstruct= U * S * V';

    % Uncasting the operations done to get magnitude to 1

    % Reversing the complex number mapping to get real numbers
    matrixDeconvert = imag(log(matrixReconstruct));
    
    % Unmap values from pi/2
    matrix_div = matrixDeconvert/(pi/2);

    % Multiply by 255 to get values from 0-1 to 0-255
        % Note for images the read in method necessitates multiplying by 255
        % however the rand_matrix function and general rand() function do
        % not
    matrix_mult = matrix_div*255;
    %matrix_mult = matrix_div;

    decompressed = matrix_mult;
end