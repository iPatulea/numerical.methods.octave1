%Patulea Ionut
%313CA
function decompress(sample)
C=wavread(sample);
c=0;
l=20;
mod=length(C)/(l*2);
for p=1:160:mod*160
	i=p;
	for j=1:l
		c++;
		aux=C(c);
		X(i,1)=aux;
		i++;
	endfor
	for i=i:160+l-1
		X(i,1)=0;
		for k=1:l
			c++;
			X(i,1)+=C(c)*X(i-k,1);
		endfor
		X(i,1)*=(-1);
		c-=l;	
	endfor
	c+=l;
endfor
sep=".";
p=strtok(sample,sep);
afis=strcat(p,"2.wav");
wavwrite(X,afis);
endfunction
