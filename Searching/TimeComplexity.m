n=1000;
tic; %starting

for i=1:n
    disp(i);
end
elapsedTime=toc;  %storing ending time in elapsedtime variable

fprintf('Elapsed Time:%f seconds\n',elapsedTime); 

%10 = 0.002866 , 0.001277
%100 = 0.004998
%1000 = 0.027736