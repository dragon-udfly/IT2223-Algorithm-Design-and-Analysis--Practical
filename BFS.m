function runBFS()
    % Step 1: Define the graph using edge lists
    s = [1 1 2 2 3 3];
    t = [2 3 4 5 6 7];
    
    % Step 2: Create the adjacency matrix
    n = max([s t]); % total number of nodes
    adjMatrix = zeros(n);
    for i = 1:length(s)
        adjMatrix(s(i), t(i)) = 1;
    end

    % Step 3: Display adjacency matrix
    disp('Adjacency Matrix:');
    disp(adjMatrix);

    % Step 4: Initialize visited array and queue
    visited = false(1, n);
    queue = [];

    % Step 5: Choose starting node
    startNode = 1;
    queue(end+1) = startNode;  % enqueue
    visited(startNode) = true;

    fprintf('BFS Traversal starting from node %d:\n', startNode);

    % Step 6: Perform BFS
    while ~isempty(queue)
        node = queue(1);        % dequeue
        queue(1) = [];
        fprintf('%d ', node);   % visit

        for neighbor = 1:n
            if adjMatrix(node, neighbor) == 1 && ~visited(neighbor)
                queue(end+1) = neighbor;   % enqueue
                visited(neighbor) = true;
            end
        end
    end
    fprintf('\n');
end


===============================================
Output:
BFS Traversal starting from node 1:
1 2 3 4 5 6 7
