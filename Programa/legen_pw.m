function pn=legen_pw(n)
pbb=[1]; if n==0, pn=pbb;  end
pb=[1 0]; if n==1, pn=pb;  end
for i=2:n;
pn=((2*i-1)*[pb,0]-(i-1)*[0, 0, pbb])/i;
pbb=pb; pb=pn;
end