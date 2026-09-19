Day_07 
02/06/2025
=============================================================================
%GRAPHS

s = [1 2];
t = [2 3];
G = graph(s, t);
plot(G);
title('Graph');

=============================================================================

G1 = digraph([1,3], [3,4]);
plot(G1);
title('directedGraph');

=============================================================================

s = [1 2 2];
t = [2 3 4];
Weights = [10 5 7];
G = graph(s, t, Weights);
plot(G, 'EdgeLabel', G.Edges.Weight);
title('Weighted undirected grapgh');

=============================================================================

s = [1 2 2];
t = [2 3 4];
Weights = [10 5 7];
G = digraph(s, t, Weights);
plot(G, 'EdgeLabel', G.Edges.Weight);
title('Weighted directed grapgh');


=============================================================================
day 08
04th June 2025

%1. Adjacency matrix 
A=[0 1 0
   1 0 1
   0 1 0];

G = graph(A);
plot(G);
title('Adjacency matrix Representation');

=============================================================================

%2.

s = [1 1 1 2 5 3 6 4 7 8 8 8];
t = [2 3 4 5 3 6 4 7 2 6 7 5];

weights = [100 10 10 10 10 20 10  30 50 10 70 10];
G = digraph(s,t,weights);
plot(G, 'EdgeLabel', G.Edges.Weight,'NodeColor','r');

=============================================================================

%3.
s = [1 1 1 2 2 6 6 7 7 3 3 9 9 4 4 11 11 8];
t = [2 3 4 5 6 7 8 5 8 9 10 5 10 11 12 10 12 12];

weights = [10 10 10 10 10 1 1 1 1 1 1 1 1 1 1 1 1 1];
G = digraph(s,t,weights);
plot(G, 'EdgeLabel', G.Edges.Weight,'Layout','force');
%arranges the node in a nice way using layout called 'force'

=============================================================================

%4.
s=[1 1 2 3 4];
t=[2 3 4 4 5];

G=graph(s,t);
nodeColor=[
1 0 0; %node 1 -red   
0 1 0; %node 1 -green
0 0 1; %node 1 -blue 
1 1 0; %node 1 -yellow
1 0 1; %node 1 -megenta
];

plot(G,'NodeColor', nodeColor, 'LineWidth',1.5);

=============================================================================

%5
s=1;
t=2:6;
G=graph(s,t);
h=plot(G,'Layout','force');
highlight(h,[1,3],'NodeColor','red');
highlight(h,1,3,'EdgeColor','magenta');

=============================================================================

%6
s=[1 1 2 3 4];
t=[2 3 4 4 5];
G=graph(s,t);
for node = 1:numnodes(G)
    adj = neighbors(G, node);
    fprintf('Node %d is connected to: ', node);
    fprintf(' %d ', adj);
    fprintf('\n');

end


output:
Node 1 is connected to:  2  3 
Node 2 is connected to:  1  4 
Node 3 is connected to:  1  4 
Node 4 is connected to:  2  3  5 
Node 5 is connected to:  4 

=============================================================================
%7.
s = [1 2 3 4 5 6 6 6 6 6 5 7 1 8 2 9 3 10 4 11 7 8 9 10 11];
t = [2 3 4 5 1 1 2 3 4 5 7 1 8 2 9 3 10 4 11 5 6 6 6 6 6];

G = graph(s,t);
h = plot(G);

for node = 1:5
    highlight(h, node, 6, "EdgeColor","yellow" );
end

for node = 7:11
    highlight(h, node, 6, "EdgeColor","magenta" );
end


for node = 1:5
    highlight(h, node, (mod(node, 5)+1), "EdgeColor","green");
end

for node = 1:5
    highlight(h, node, node+6, "EdgeColor","black");
end

for node = 1:4
    highlight(h, node, node+7, "EdgeColor","black");
end

highlight(h, 5,7, "EdgeColor","black");