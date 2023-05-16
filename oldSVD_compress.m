% Function to get the three SVD matrices of a matrix and zero out k singular values
function[oldU, oldS, oldV] = oldSVD_compress(greyScaleMatrix, k)
    % SVD on passed matrix
    [oldU, oldS, oldV] = svd(greyScaleMatrix);

    % Zeroing out k singular values from the diagonal
    oldDiagonal = oldS;
    oldDiagonal(k+1:end,:)=0; % Sets the values from row N+1 to end to 0
    oldDiagonal(:,k+1:end)=0; % Sets the values from column N+1 to end to 0

    % Setting the original diagonal to be the zeroed out diagonal
    oldS = oldDiagonal;
end