n = 100;
m = 200;
A = randn(n, m);
B = randn(m, n);
original = sum(sum(((((A * B) * A) * B) * A), 1), 2);

optimized = 1 * (sum(((((sum(A, 1) * B) * A) * B) * A), 2));
normalization = sum(abs(original(:)));
assert(sum(abs(original(:) - optimized(:))) / normalization < 1e-10);