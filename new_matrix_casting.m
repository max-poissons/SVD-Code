% Function to map a matrix of doubles such that their magnitude is 1
function [cast_matrix] = new_matrix_casting(image_matrix)
    % Scaling values by 255 to get all values in the range of 0-1 as
    % doubles
        % Note for images the read in method necessitates dividing by 255
        % however the rand_matrix function and general rand() function do
        % not
    value_scaling = image_matrix/255;
    %value_scaling = image_matrix;


    % Casting operations to get the magnitude of all entries in a matrix to 1
    
    % Map the doubles matrix values by pi/2 to get non-negative real
    % numbers
    pi_Mapping = (pi/2) * value_scaling;

    % Take the exponential of real numbers from Pi-mapping times i to cast 
    % them to complex numbers and get a magnitude of 1 for all entries of the matrix
    complex_cast = exp(pi_Mapping .* 1i);
    cast_matrix = complex_cast;
    end