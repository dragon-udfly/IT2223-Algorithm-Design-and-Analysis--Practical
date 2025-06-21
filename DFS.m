function runDFS()
    s = [1 1 2 2 3 3];
    t = [2 3 4 5 6 7];
    n = max([s t]);

    adjMatrix = zeros(n);
    for i = 1:length(s)
        adjMatrix(s(i), t(i)) = 1;
    end

    disp('Adjacency Matrix:')
    disp(adjMatrix)

    visited = false(1, n);
    fprintf('DFS Traversal starting from node 1:\n')
    dfsRecursive(1);

    function dfsRecursive(node)
        if ~visited(node)
            fprintf('%d ', node);
            visited(node) = true;
            for neighbor = 1:n
                if adjMatrix(node, neighbor) == 1 && ~visited(neighbor)
                    dfsRecursive(neighbor);
                end
            end
        end
    end
end

===========================================

Output:
DFS Traversal starting from node 1:
1 2 4 5 3 6 7