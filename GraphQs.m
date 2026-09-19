% 1. Write the Matlab code to import a graph use the following source and destination data
% 2. Using the import data, draw the graph
% 3. Write a MATLAB code to find and display the subgraph for the given nodes
% 4.Identify and display the adjacent vertices for each nodes
% 5.Label the edges of the graph
% 6.Label the nodes of the graph
% 7.Write a MATLAB code to color the graph(graph coloring)
% 8.Write a MATLAB code to find the shoterst path from node 1 to node 5

% Task 1: Define the graph data
source = [1 1 2 3 4];
destination = [2 3 4 4 5];

% Task 2: Create and draw the graph
G = graph(source, destination); % Undirected graph (use digraph if needed)
figure;
plot(G);
title('Original Graph');

% Task 3: Find and display a subgraph for selected nodes
selectedNodes = [1 2 3 4];
subG = subgraph(G, selectedNodes);
figure;
plot(subG);
title('Subgraph of Nodes 1, 2, 3, and 4');

% Task 4: Identify and display adjacent vertices for each node
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    adj = neighbors(G, i);
    fprintf('Node %d: ', i);
    fprintf('%d ', adj);
    fprintf('\n');
end

% Task 5 & 6: Label edges and nodes
figure;
p = plot(G, 'EdgeLabel', G.Edges.EndNodes(:,1) + "-" + G.Edges.EndNodes(:,2));
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));
title('Graph with Node and Edge Labels');

% Task 7: Graph coloring (simple greedy coloring)
colors = zeros(1, numnodes(G));
for i = 1:numnodes(G)
    neighborColors = colors(neighbors(G, i));
    availableColors = setdiff(1:numnodes(G), neighborColors);
    colors(i) = availableColors(1);
end
figure;
p = plot(G);
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));
p.NodeCData = colors;
colormap(jet(numnodes(G)));
colorbar;
title('Graph Coloring');

% Task 8: Find the shortest path from node 1 to node 5
[path, dist] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to node 5: ');
fprintf('%d ', path);
fprintf('\nDistance: %d\n', dist);

% Highlight the shortest path
figure;
p = plot(G);
highlight(p, path, 'EdgeColor', 'r', 'LineWidth', 2);
title('Shortest Path from Node 1 to Node 5');

 Output:
Adjacent vertices for each node:
Node 1: 2 3 
Node 2: 1 4 
Node 3: 1 4 
Node 4: 2 3 5 
Node 5: 4 
Shortest path from node 1 to node 5: 1 2 4 5 
Distance: 3