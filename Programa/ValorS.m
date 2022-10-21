

function a = ValorS(h,n)
a = zeros(1,n+1);
a(1)=0;
for j = 1 : n,
a(j+1) = j*h;
endfor

endfunction
