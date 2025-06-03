arr = [64, 25, 12, 22, 11];
n = length(arr);

for i = 1:n-1
    min_idx = i;
    for j = i+1:n
        if arr(j) < arr(min_idx)
            min_idx = j;
        end
    end
    
    % Swap arr(i) and arr(min_idx)
    if min_idx ~= i
        temp = arr(i);
        arr(i) = arr(min_idx);
        arr(min_idx) = temp;
    end
end

disp('Sorted array:');
disp(arr);
