 
arr = [3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
len = length(arr);
target = input ("Enter your target number to find:  ");
tic;

for i=1:len
    if (arr(i)==target)
        found = true;
        index = i;
        break;
    else
        found = false;
    end
end

if (found == true)
disp("Index is: "+ index);
else
    disp("Index not found!")
end

elapsedTime = toc;

disp("Elapsed Time: "+ elapsedTime);

