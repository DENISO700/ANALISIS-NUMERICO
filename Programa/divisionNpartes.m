

deltaa =1;

figure(1)
hold on
axis ([-2*pi 2*pi  -2*pi 2*pi])
grid on

L=2*pi;
n=8;
grid on; % Cuadrícula
xlabel("x");
ylabel("y");


#grafica por longitud de arco 

f3=@(t) cos(t);
f4=@(t) sin(t);
V= linspace(0,2*pi,500);
plot(f3(V),f4(V), 'b-')
hold on 
for a=0 : deltaa : n ;
title(strcat("Curva subdivida en base a   \nt*s=",num2str ( (L*a)/n ) ) )

#muestra el recorrido del parametro t

plot(f3(((L*a)/n)),f4(((L*a)/n)), 'ro-', 'markersize', 5, 'linewidth', 3);
grid on
pause(2)

end ;




