%Patulea Ionut
%313CA
function compress(sample)
X=wavread(sample);
X;
mod=length(X)/160;
c=0;
p=20;
for i=1:160:160*(mod-1)
	for j=1:p+1
		R(j,1)=0;
		for k=i+j-1:(160+i-1)
			R(j,1)+=X(k)*X(k-j+1);
		endfor
	if j<p+1
		c++;
		C(c,1)=X(j+i-1);
	endif
	endfor
	A=Levinson_Durbin(R,p);
	A*=(-1);
	for j=1:p
		c++;
		C(c,1)=A(j);
	endfor
endfor
sep=".";
p=strtok(sample,sep);
afis=strcat(p,".compressed");
wavwrite(C,afis);
endfunction
