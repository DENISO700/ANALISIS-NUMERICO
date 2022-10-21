
#f1=@(t) 0.5 + 0.3*t + 3.9*t.^2 -4.7*t.^3
#f2=@(t) 1.5 + 0.3*t + 0.9*t.^2 -2.7*t.^3
function pn = biseccion (f,a,b,error)
  
#Pedimos la E.R. al usuario 
funcion = f;

#La transformamos a funcion anonima par poder evaluarla en nuestro algoritmo
#funcion = inline(funcion);

fprintf("\t") 
#Pedimos el valor del limite inferior

an = a;
#an=0


#Pedimos el valor del limite superior
bn = b;
#bn=2


#Pedimos el valor del error
e = error;
#e=0.001

#Calculamos el n, para saber la cantidad de iteraciones necesarias.
n= round((log10((1/e)*(bn-an)))/(log10(2)));

#Iniciamos nuestra variable contadora para el cilo while
i=0;

#Primera ocndicion if para saber si el metodo es valido para la funcion
if funcion(an)*funcion(bn)<0


#Ciclo while que itera segun el n calculado en base al error
while i < n
 
    pn = (an + bn)/2;

       
 #Condiciones pra decidir an, pn y bn en cada iteracion
 if funcion(an)*funcion(pn)<0
    
    bn = pn; 
   
 elseif funcion(an)*funcion(pn)>0
    
    an = pn;
 
elseif funcion(pn)==0
  
    break 
     
 endif
    
#aumentamos en 1 nuestra variable contadora   
i++;

endwhile

#imprimimos en pantalla el valor de la raiz aproximada
     fprintf(" La Raiz aproximada es: %.4f \n", pn)
else
     
 #Imprime en pantalla el mensaje de informacion de que el metodo de biseccion no funciona con la funcion dada
 fprintf("no se puede resolver por este metodo",0)
endif

endfunction
