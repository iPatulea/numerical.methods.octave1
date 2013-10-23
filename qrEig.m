%Patulea Ionut
%313CA
function [l,X]=qrEig(A)
X=eye(length(A));
for i=1:1300
	[Q,R]=gramSchmidtMod(A);
	A=R*Q;
	X=X*Q;
endfor
for i=1:length(A)
	l(i)=A(i,i);
endfor
endfunction
