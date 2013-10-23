%Patulea Ionut
%313CA
function A=readFile(filename)
f=fopen(filename);
n = fscanf(f,"%d",1);
R = fscanf(f,"%f");
M=R(1:2:n*2-1);
K=R(2:2:n*2);
A=zeros(n,n);
A(1,1)=( K(1)+K(2) )/M(1);
A(1,2)=-K(2)/M(1);
for i=2:n-1
	A(i,i-1)=-K(i)/M(i);
	A(i,i)=(K(i)+K(i+1))/M(i);
	A(i,i+1)=-K(i+1)/M(i);
endfor
A(n,n-1)=-K(n)/M(n);
A(n,n)=K(n)/M(n);
endfunction
