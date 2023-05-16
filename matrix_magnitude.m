% Check magnitudes of each entry in a matrix
% Function that takes in a matrix and returns the magnitudes of each entry
    % Note: If magnitudes are 1 then that means they are all weighted equally
% Parameters:
%   input_matrix = expects a matrix of complex numbers to see their
%   magnitude
function magnitude_matrix = matrix_magnitude(input_matrix)
    % Creating a matrix of 0's to replace eventually with the corresponding magnitudes of the passed matrix's entries
    [rows, columns] = size(input_matrix);
    magnitude_matrix = zeros(rows, columns);

    % For loop over the collumns and rows of the original matrix
    for row = 1:rows
        for col = 1:columns
            % Taking the magnitude of an entry
            magnitude = abs(input_matrix(row, col));

            % Setting the corresponding entry in the magnitude matrix to the magnitude of that entry
            magnitude_matrix(row, col) = magnitude;
        end
    end
end