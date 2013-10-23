%Patulea Ionut
%313CA
function a=Levinson_Durbin(r,p);

	E(1)=r'(1);
	a(1,1)=-r'(2)/E(1);
	for i=2:p
		k(i)=0;
		for j=1:i-1
			k(i)+=( a(j,1)*r'(i-j+1)/E(i-1) );
		endfor
		k*=(-1);
		a(i,1)=k(i);
		for j=2:i
			a(j,1)=a(j,1)+k(i)*a(i-j+1,1);
		endfor
		E(i)=(1-k(i)^2)*E(i-1);
	endfor
endfunction
