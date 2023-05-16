% Function to create a random m x n matrix with values between 0 and 255
function [random_matrix] = rand_matrix(m, n)
    random_matrix = randi([0,255], m, n);
    random_matrix = random_matrix/255;
end