




figure(1)
hold on
axis ([0 2   0 2])
grid on

L= 2.4952;
n=4;
grid on; % Cuadrícula
xlabel("x");
ylabel("y");

deltaa =1/n;
#grafica por longitud de arco 

f1=@(t) 0.5 + 0.3*t + 3.9*t.^2 -4.7*t.^3
f2=@(t) 1.5 + 0.3*t + 0.9*t.^2 -2.7*t.^3
V= linspace(0,1,500);
plot(f1(V),f2(V), 'b-')
hold on 
i=1
for a=1/4 : deltaa : 1 ;
  
title(strcat("Curva subdivida en base a   \nt*s=",num2str ( (L*i)/n ) ) )

#muestra el recorrido del parametro t

plot(f1(((L*i)/n)),f2(((L*i)/n)), 'ro-', 'markersize', 5, 'linewidth', 3);
grid on
pause(2)
i+=1;
end ;