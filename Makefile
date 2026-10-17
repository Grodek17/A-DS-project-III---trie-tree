CXX = g++
CXXFLAGS = -Wall -Wextra

trie_tree: src/main.cpp
	$(CXX) $(CXXFLAGS) src/main.cpp -o trie_tree

clean:
	rm -f trie_tree

.PHONY: clean
