function I= gauss_q(f,a,b) 
n=20;
p=legen_pw(n);
t=roots(p)';
t=sort(t);
for j=1:n
y=zeros(1,n);
y(j)=1;
p=polyfit(t,y,n-1);
P=poly_itg(p);
w(j)=polyval(P,1)- polyval(P,-1);
end
t=0.5*((b-a)*t+a+b);
y= feval(f,t);
I=sum(w.*y)*(b-a)/2;
#fprintf('\n\t x\t y\t\t w\n')
for j=1:n
#fprintf('\t%e\t %e\t %e\n', t(j) , y(j) , w(j))
end

