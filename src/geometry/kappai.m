function k_l = kappai(d2l, d23, d3l)
%KAPPAI Compute the kappa auxiliary quantity.
	k_l = (d2l*d2l + d23*d23 - d3l*d3l)/(2*d23);
end
