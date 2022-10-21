pkg symbolic load
clc

#function f=fun1(t)
#dx=0.3+2*3.9*t-3*4.7*t^2;
#dy=0.3+2*0.9*t-3*2.7*t^2;
#f=sqrt(dx^2+ dy^2);
#f1=@(t) 0.5 + 0.3*t + 3.9*t.^2 -4.7*t.^3
#f2=@(t) 1.5 + 0.3*t + 0.9*t.^2 -2.7*t.^3
#end
#1.5 + (0.3)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)) + (0.9)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^2 - (2.7)*((1/47)*((47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 216/(47*(55225*x.^2 - 86360*x + 29200).^(1/2) - 11045*x + 8636).^(1/3) + 13)).^3


fprintf("\t")   

#Pedimos la E.R. al usuario 
funcion = input('Escriba la funcion entre parentesis:','s');

#La transformamos a funcion anonima par poder evaluarla en nuestro algoritmo
funcion = inline(funcion);

fprintf("\t") 
#Pedimos el valor del limite inferior

an = input('Ingrese el valor de an: ');
#an=-1
fprintf("\t") 

#Pedimos el valor del limite superior
bn = input('Ingrese el valor de bn: ');
#bn=0.49

fprintf("\t") 

#Pedimos el valor del error
e = input('Ingrese el valor del error: ');
#e=0.001

fprintf("\t") 

#Calculamos el n, para saber la cantidad de iteraciones necesarias.
n= round((log10((1/e)*(bn-an)))/(log10(2)))

#Iniciamos nuestra variable contadora para el cilo while
i=0;

#Primera ocndicion if para saber si el metodo es valido para la funcion
if funcion(an)*funcion(bn)<0

#Imprimimos los encabezados de nuestra tabla de datos.
#fprintf("%s\t\t%s\t\t\t%s\t\t\t%s\t\t\t%s\t\t\t%s\t\t\t%s\n", 'n','an','pn','bn','f(pn)','f(an)', 'f(an)*f(pn)')

#Ciclo while que itera segun el n calculado en base al error
while i < n
 
    pn = (an + bn)/2;
 #   fprintf("%d\t\t", i) 
  #  fprintf("%.7f\t\t", an)
  #  fprintf("%.7f\t\t", pn)
  #  fprintf("%.7f\t\t", bn)    
  #  fprintf("%.7f\t\t", funcion(pn))
  #  fprintf("%.7f\t\t", funcion(an))
       
 #Condiciones pra decidir an, pn y bn en cada iteracion
 if funcion(an)*funcion(pn)<0
    #fprintf("%.7f\t\t", funcion(an)*funcion(pn)) 
    bn = pn; 
   
 elseif funcion(an)*funcion(pn)>0
    #fprintf("%.7f\t\t", funcion(an)*funcion(pn))
    an = pn;
 
elseif funcion(pn)==0
    #fprintf("\t")
    #fprintf("%s","raiz encontrada")
    break 
     
 endif
    
#aumentamos en 1 nuestra variable contadora   
i++;

endwhile

#imprimimos en pantalla el valor de la raiz aproximada
     fprintf(" \tla raiz aproximada es: %.7f \n", pn)
else
     
 #Imprime en pantalla el mensaje de informacion de que el metodo de biseccion no funciona con la funcion dada
 fprintf("%s","no se puede resolver por este metodo")
endif

