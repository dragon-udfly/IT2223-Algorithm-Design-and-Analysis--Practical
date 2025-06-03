 
arr = [3,5,7,9,11,13];
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

