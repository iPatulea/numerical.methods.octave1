%Patulea Ionut
%313CA
function x=solve(A,b)
[Q,R]=gramSchmidtMod(A);
b=Q^-1*b;
[n n]=size(R);
x=zeros(n,1);
x(n)=b(n)/R(n,n);
if n!=1
	for i=n:-1:1
		x(i)=(b(i)-R(i,i+1:n)*x(i+1:n))/R(i,i);
	endfor
endif
endfunction
