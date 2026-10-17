# Dynamic Sparse Table – Integer Trie (C++)

A custom integer-based Trie implementation developed as the third university project for the Algorithms and Data Structures course.

Unlike traditional prefix trees used for strings, this implementation stores integer keys and determines traversal paths using modulo and integer division.

## Features

- **Custom integer Trie:** Keys are organized into a tree using configurable branching factors.
- **Dynamic memory allocation:** Child nodes are stored using pointer-based linked lists instead of fixed-size child arrays.
- **Insert & Lookup:** Add keys and search for existing values.
- **Deletion:** Remove keys, replacing internal nodes with values from their leftmost descendant leaf.
- **Preorder traversal:** Print the tree contents in traversal order.

## Implementation

The tree uses two branching parameters:

- `n` – maximum number of branches from the root.
- `k` – maximum number of branches from each subsequent node.

The first branch is selected using `key % n`. At deeper levels, successive integer divisions and modulo operations determine the next branch.

Each tree node stores a key and a linked list of its existing children, avoiding the allocation of unused child pointers.

This approach is designed for storing sparsely distributed integer keys.

## Build & Run

**Requirements:** G++ and GNU Make.

```bash
git clone https://github.com/Grodek17/A-DS-project-III---trie-tree.git
cd A-DS-project-III---trie-tree
make
```

Run the included example:

```bash
./trie_tree < examples/sample_input.txt
```

The example demonstrates insertion, lookup, deletion, and preorder traversal.

## Project Structure

```text
src/main.cpp                Main Trie implementation
examples/sample_input.txt  Sample input from the assignment
Makefile                    Build instructions
.gitignore                  Ignored build artifacts
```

## Project Background

Developed as part of the Algorithms and Data Structures course at Gdańsk University of Technology.

The project focuses on custom tree structures, linked lists, pointer manipulation, dynamic memory management, and tree traversal algorithms.

The original implementation has been preserved, with improvements to the repository structure, build process, and documentation.
