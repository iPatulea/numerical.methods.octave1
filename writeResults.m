%Patulea Ionut
%313CA
function writeResults(l, X, fileName)
	n=length(l);
	f=fopen(fileName,'w');
	fprintf(f,"%d\n",n);
	for i=1:n
		fprintf(f,"%f\n",l(i));
		for j=1:n
			fprintf(f,"%f ",X(j,i));
		endfor
		fprintf(f,"\n");
	endfor
	fclose(f);
endfunction
