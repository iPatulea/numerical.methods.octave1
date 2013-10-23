%Patulea Ionut
%313CA
function myPlot(X)
[n m]=size(X);
for i=1:m
	subplot(3, 7, i);
	plot(X(:,i),"r");
endfor
endfunction
