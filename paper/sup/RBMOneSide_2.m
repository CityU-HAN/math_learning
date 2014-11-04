n = 14;
m = 1;
A = randn(1, n);
nset = dec2bin(0:(2^(n) - 1));
original = 0;
for i = 1:size(nset, 1)
  v = logical(nset(i, :) - '0');
  original = original + (v * A') ^ 2;
end

optimized = 2^(n - 3) * (2 * (sum((A' * sum(A', 1)), 1)) + 2 * ((A * A')));
normalization = sum(abs(original(:)));
assert(sum(abs(original(:) - optimized(:))) / normalization < 1e-10);