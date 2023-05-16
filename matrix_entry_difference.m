function [difference] = matrix_entry_difference(original_matrix, compare_matrix)
    % Shows the different entries between matricxes
    display_matrix = sum(original_matrix~=compare_matrix);
    display_result = display_matrix/numel(original_matrix);
    disp('Difference Result:');
    disp(display_result);
    difference = display_result;
end