% Define the nodes
nodes = {'A','B','C','D','E','F','G'};

% Define edges using source and target nodes
s = [1 1 2 2 3 3]; % from: A->B , A->C, B->D, etc.
t = [2 3 4 5 6 7]; % to
weight = [2,3,5,6,7,8];

% Create a directed graph
G = digraph(s, t, weight, nodes); % s, t , weight, nodes

% Plot the tree
plot(G, 'EdgeLabel', G.Edges.Weight, 'Layout', 'layered', 'Direction', 'down');
title('Simple Tree with 3 Levels');