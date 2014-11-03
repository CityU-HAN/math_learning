Learning to Discover Efficient Mathematical Identities
======================================================
  We explore how machine learning techniques can be
  applied to the discovery of efficient mathematical identities. We
  introduce an attribute grammar framework for representing symbolic
  expressions. Given a grammar of math operators, we build trees that
  combine them in different ways, looking for compositions that are analytically equivalent to a target
  expression but of lower computational complexity. However, as the
  space of trees grows exponentially with the complexity of the
  target expression, brute force search is impractical for all but the
  simplest of expressions. Consequently, we introduce two novel
  learning approaches that are able to learn from simpler expressions
  to guide the tree search. The first of these is a simple $n$-gram
  model, the other being a recursive neural-network. We show how
  these approaches enable us to derive complex identities, beyond
  reach of brute-force search, or human derivation.


More information at: http://arxiv.org/abs/1406.1584

Execution
=========
Run ./main.py to compute some equivalent expressions for (\sum AA^T)k .
Last lines of main.py define target.


Testing
=======
Run ./all_tests.py from tests directory to execute all tests.



