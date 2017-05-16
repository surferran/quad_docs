# from http://stackoverflow.com/questions/12020020/how-to-list-specific-node-edge-in-networkx
import networkx as nx
G = nx.DiGraph()
G.add_edges_from([('n', 'n1'), ('n', 'n2'), ('n', 'n3')])
G.add_edges_from([('n4', 'n41'), ('n1', 'n11'), ('n1', 'n12'), ('n1', 'n13')])
G.add_edges_from([('n2', 'n21'), ('n2', 'n22')])
G.add_edges_from([('n13', 'n131'), ('n22', 'n221')])
G.add_edges_from([('n131', 'n221'), ('n221', 'n131')])
G.add_node('n5')
# Using the out_degree function to find all the nodes with children:

print [k for k,v in G.out_degree().iteritems() if v > 0]
# ['n13', 'n', 'n131', 'n1', 'n22', 'n2', 'n221', 'n4']
# Note that n131 and n221 also show up here since they both have an edge to each other. You could filter these out if you want.
# All nodes without children:
print [k for k,v in G.out_degree().iteritems() if v == 0]
# ['n12', 'n11', 'n3', 'n41', 'n21', 'n5']
# All orphan nodes, i.e. nodes with degree 0:

print [k for k,v in G.degree().iteritems() if v == 0]
# ['n5']
# To get all orphan "edges", you can get the list of components of the graph, filter out the ones that don't contain n and then keep only the ones that have edges:
print [G.edges(component) for component in nx.connected_components(G.to_undirected()) if len(G.edges(component)) > 0 and 'n' not in component]
# [[('n4', 'n41')]]
# Nodes with more than 2 children:
print [k for k,v in G.out_degree().iteritems() if v > 2]
# ['n', 'n1']
# If you traverse the tree, you will not get an infinite loop. NetworkX has traversal algorithms that are robust to this.
