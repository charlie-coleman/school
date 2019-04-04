# Programming Assignment 2 for CSCI 3650 #
---

## Using the code

To create a network description file from a configuration file, you need to provide an input conf file and an output file path.

`python3 part1.py <file in> <file out>`

To create a virtual network from a network description file, you need to provide the description file

`python3 part2.py <file in>`

## Configuration File Format

```
nodes: Int
topology: full|linear|random|star
alpha: Float (0 <-> 1)
node-min: Int
node-max: Int
link-min: Int
link-max: Int
```

All names of parameters are case-insensitive. 

All parameters must be present except for alpha, which can be left out (unless using the random topology.

Parameters can be in any order.

## Network Description File Format

```
Source-Node-ID  Destination Node-ID Link0-weight
Source-Node-ID  Destination Node-ID Link1-weight
...
Node0-weight  Node1-weight...  NodeN-weight
```
