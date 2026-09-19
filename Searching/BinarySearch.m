A = [3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
target = input("Enter the target number to find: ");

low = 1;
high = length(A);
found = false; % flag to indicate if the target is found

while low <= high
    mid = floor((low + high)/2); % calculate the middle index
    if A(mid) == target
        disp("Element found! Index is " + mid);
        found = true;
        break;
    elseif target > A(mid)
        low = mid + 1;
    else
        high = mid - 1;
    end
end

if ~found
    disp("Element not found.");
end
