%Patulea Ionut
%313CA
function [l, X] = eigenValuesVectors(A)
	[X,l]=eig(A);
	l=diag(l);
	n=length(l);
	l(:)=sqrt(l(:)*1000)/(2*pi);
	for i=1:n
		for j=1:n
			X(i,j)/=X(n,j);
		endfor
	endfor
endfunction
