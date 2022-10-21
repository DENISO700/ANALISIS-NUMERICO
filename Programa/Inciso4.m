pkg symbolic load
clc

fprintf("\t")   

fprintf("\t","Proyecto de Investigacion MM-412")   

fprintf("\t")   
#Pedimos la E.R. al usuario 
funcion = input('Escriba la Ecuacion Rectangular entre parentesis:','s');

#La transformamos a funcion anonima par poder evaluarla en nuestro algoritmo
funcion = inline(funcion);

derivada = input('Escribe la df(x) entre parentesis: ') 
derivada1 = diff(derivada);

#1.5 + (0.3)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)) + (0.9)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^2 - (2.7)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^3

derivadafinal = inline(char(derivada1))

fprintf("\t") 
#Pedimos el valor del limite inferior
an = input('Ingrese el valor de an: ');

fprintf("\t") 
#Pedimos el valor del error
e = input('Ingrese el valor del error: ');

fprintf("\t") 
#Calculamos el n, para saber la cantidad de iteraciones necesarias.
n= round((log10((1/e)*(bn-an)))/(log10(2)))

#Graficamos la funcion rectangular
ezplot(funcion,[an,bn]);
title('Grafica de la funcion S')

#Declaramos t como variable ismbolica
syms t; 

fprintf("\t") 
#Pedimos el valor de la curva parametrica en x
th = input('Ingrese el valor de la curva parametrica en X: ')

fprintf("\t") 
#Pedimos el valor de la curva parametrica en y
tv = input('Ingrese el valor de la curva parametrica en Y: ')

fprintf("\t") 
#Calculamos la derivada de la curva parametrica en x
thd=diff(th)

fprintf("\t") 
#Calculamos la derivada de la curva parametrica en y
tvd=diff(tv)

fprintf("\t") 
#Creamos el argumento para calcular la integral de la definicion de la longitud de arco
argLongArco = inline(char(((thd^2)+(tvd^2))^(1/2)))


#Iniciamos nuestra variable contadora para el cilo while
i=0;

xi = an

cantidad = n


function ea = errora(xa,xp)
    ea = abs(((xa-xp)/xa)*100);
end


if derivada(xi) == 0
    fprintf ('no se puede hallar una raiz');
else

    fprintf("%s\t %s\t\t  %s\n",'i','Xi',' Ea ');
        
  while i <= cantidad
       fprintf('%d\t',i); 
       fprintf('%.8f\t',xi);
       xn = xi-(funcion(xi)/derivada(xi));
       fprintf('%.8f\t',errora(xn,xi));   
       xi = xn;
       fprintf ("\n");
       i++;

   endwhile
       fprintf ("____________________________________________\n");
       fprintf('\nLA RAIZ APROXIMADA ES: %.8f\n',xn);
            
endif

fprintf("\t") 
#Calculamos la longitud de arco desde t=0 hasta t=1
longArcoT1_T2=quad(argLongArco,0,1)
fprintf("\t") 
#Calculamos la longitud de arco desde t=0 hasta t=pn
longArcoT1_Ts=quad(argLongArco,0,xn)
fprintf("\t") 
#Realizamso la division entre las longitudes de arco encontradas para encontrar el s
s=(longArcoT1_Ts)/(longArcoT1_T2)