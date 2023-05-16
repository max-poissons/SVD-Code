% Function that takes in the name/path of an image file and converts the image into greyscale, then converts that to a matrix of doubles
% Returns a matrix of doubles between 0 and 255
% Parameters:
%   image_file = expect the file name path for the desired image
function [matrix] = grey_scale_convert(image_file)
    % Reading in an image, returns a m x n x 3 array of uint16 values
    initImage = imread(image_file);

    % Converting an the array to greyscale by eliminating hue and saturation while retaining luminescense, creates a m x n matrix
    greyScale = im2gray(initImage);
    % Note: Converts RGB to greyscale by forming a weighted sum of R, G, B components: 0.2989 * R + 0.5870 * G + 0.1140 * B 

    % Ensures that the matrix being passed in as doubles for precision operations
    matrixDouble = double(greyScale); % Note 'im2double()' was not used since they are scaled by 255 during new_matrix_casting

    matrix = matrixDouble;
    end