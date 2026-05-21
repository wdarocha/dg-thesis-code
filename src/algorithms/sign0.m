function s = sign0(x)
%SIGN0 Return the sign of a scalar with zero treated as positive.
	if(x >= 0)
		s = 1;
	else
		s = -1;
	end
end
