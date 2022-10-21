
pkg symbolic load
clc

#Declaramos t como variable ismbolica
#syms t; 

#fprintf("\t") 
#Pedimos el valor de la curva parametrica en x
#th = input('Ingrese el valor de la curva parametrica en X: ')

#x_t = 0.5 + 0.3*t + 3.9*t^2 - 4.7*t^3
#y_t =  1.5 + 0.3*t + 0.9*t^2 -2.7*t^3

#fprintf("\t") 
#Pedimos el valor de la curva parametrica en y
#tv = input('Ingrese el valor de la curva parametrica en Y: ')

#fprintf("\t") 
#Calculamos la derivada de la curva parametrica en x
#thd=diff(th)

#fprintf("\t") 
#Calculamos la derivada de la curva parametrica en y
#tvd=diff(tv)

#fprintf("\t") 
#Creamos el argumento para calcular la integral de la definicion de la longitud de arco
#argLongArco = inline(char(((thd.^2)+(tvd.^2)).^(1/2)))
#Calculamos la longitud de arco desde t=0 hasta t=1
#longArcoT1_T2=quad(argLongArco,0,1,0.001)



 #ppd = [0.3+2*3.9*t-3*4.7*t.^2  0.3+2*0.9*t-3*2.7*t.^2]
 
 #x= inline(char(ppd(1).^2))
 #y= inline(char(ppd(2).^2))
 
 #ppd = [0.3+2*3.9*t-3*4.7*t.^2 , 0.3+2*0.9*t-3*2.7*t.^2]
 


#argumento3= @(t) (ppd(1)^2 + ppd(2).^2).^1/2
#argumento4 = @(t)((0.3+2*3.9*t-3*4.7*t.^2).^2 + (0.3+2*0.9*t-3*2.7*t.^2).^2).^1/2

L=gauss_q(@func1,0,1)


