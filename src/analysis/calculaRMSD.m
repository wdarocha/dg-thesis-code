function [rmsd, Xsol] = calculaRMSD(Xsol, X)
%CALCULARMSD Compute the RMSD after rigid alignment.
	[Xsol, X] = mesmoCentrodeMassa(Xsol, X);
	Q = melhorRotacaoNormaF(Xsol, X);
	Xsol = Xsol*Q';
	rmsd = norm(X - Xsol,'fro');
end
