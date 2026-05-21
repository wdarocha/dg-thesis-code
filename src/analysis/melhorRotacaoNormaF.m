function Q = melhorRotacaoNormaF(Y,X)
%MELHORROTACAONORMAF Compute the best Frobenius-norm rotation.
	[U, ~, V] = svd(X'*Y);
	Q = U*V';
end
