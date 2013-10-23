%Patulea Ionut
%313CA
function [Q, R] = gramSchmidtMod(A)

[m,n] = size(A);
R(1,1) = norm(A(1:m,1));
Q(1:m,1) = A(1:m,1) ./ R(1,1);
  
for i = 2 : n
	R(1:i-1,i) = Q(1:m,1:i-1)'*A(1:m,i);
	y = A(1:m,i)-Q(1:m,1:i-1)*R(1:i-1,i);
	R(i,i) = norm(y);
	Q(1:m,i) = y ./ R(i,i);
end
end
