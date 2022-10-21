function Z=srule(f,a0,b0,tol0) 
    
%Ingreso   - f es el integrando como string 'f' 
%        - a0 y b0 límites inferior y superior de integración 
%        - tol0 es la tolerancia 
% salida - Z es un vector 1 x 6  [a0 b0 S S2 err tol1]  

h=(b0-a0)/2; 
C=zeros(1,3); 
C=feval(f,[a0 (a0+b0)/2 b0]); 
S=h*(C(1)+4*C(2)+C(3))/3; 
S2=S; 
tol1=tol0; 
err=tol0; 
Z=[a0 b0 S S2 err tol1]; 
