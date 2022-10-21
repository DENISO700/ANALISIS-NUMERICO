

#Funciones parametricas
f1=@(t) 0.5 + 0.3*t + 3.9*t.^2 -4.7*t.^3
f2=@(t) 1.5 + 0.3*t + 0.9*t.^2 -2.7*t.^3

#Intervalo de T
# [0 1]

#curva rectangular
f3= @(x) 1.5 + (0.3)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)) + (0.9)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^2 - (2.7)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^3

#'1.5 + (0.3)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)) + (0.9)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^2 - (2.7)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^3'

#intervalo metodo de biseccion 
#[-1 0.49]

#Encontramos t*(s) por medio de biseccion
Ts= biseccion(f3,-1,0.49,0.001);

#longitud de arco de 0 hasta ts
LA = longitudArco (@func1,0, Ts);

#longitud de arco de 0 hasta 1
LA2 = longitudArco (@func1,0, 1);

#valos de delta s en la curva
s= LA/LA2;

#valor del parametro
t = 1 ;

#numero de intervalos
n=4;
delta=t/n;
j=0;
for a=delta : delta : t 

p = zeros(1,n+1);
p(1)=0

p(j+1) = a;
j=j+1;
endfor

