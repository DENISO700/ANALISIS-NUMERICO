function [Q nc]=SimpRecur(f,a,c,b,fa,fc,fb,nivel,TOL,Q0)
% Simpson a 1/3 con recursion Divide y Venceras
if nivel > 20
nc=0;
Q=Q0;
return
end
h=(c-a)/2;
c1=a+h;c2=c+h;
fc1=feval(f,c1);fc2=feval(f,c2);
Q1=h/3*(fa+4*fc1+fc);Q2=h/3*(fc+4*fc2+fb);
nc=2;
Q=Q1+Q2;
if abs(Q-Q0) > TOL
nivel=nivel+1;
[Q1 n1]=SimpRecur(f,a,c1,c,fa,fc1,fc,nivel,TOL/2,Q1);
[Q2 n2]=SimpRecur(f,c,c2,b,fc,fc2,fb,nivel,TOL/2,Q2);
nc=nc+n1+n2;
Q=Q1+Q2;
End
