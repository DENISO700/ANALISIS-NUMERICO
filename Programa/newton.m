

function xn = newton (f, fprima,p,a,b,error)
  
  #METODO DE NEWTON RAPSHON
clc;

funcion = f;

derivada = fprima;


xi = p;

an = a;
#an=-1


#Pedimos el valor del limite superior
bn = b;
#bn=0.49


#Pedimos el valor del error
e = error;

#Calculamos el n, para saber la cantidad de iteraciones necesarias.
n= round((log10((1/e)*(bn-an)))/(log10(2)))
i=1;

function ea = errora(xa,xp)
    ea = abs(((xa-xp)/xa)*100);
end


if derivada(xi) == 0
    fprintf ('no se puede hallar una raiz');
else

    #fprintf("%s\t %s\t\t  %s\n",'i','Xi',' Ea ');
        
  while i <= n
      # fprintf('%d\t',i); 
      # fprintf('%.8f\t',xi);
       xn = xi-(funcion(xi)/derivada(xi));
     #  fprintf('%.8f\t',errora(xn,xi));   
       xi = xn;
     #  fprintf ("\n");
       i++;

   endwhile
     #  fprintf ("____________________________________________\n");
       fprintf('\nLa Raiz aproximada es: %.8f\n',xn);
            
endif

endfunction
