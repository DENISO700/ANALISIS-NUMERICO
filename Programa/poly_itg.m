function py = poly_itg(p)
% poly_itg(p) integra un polinomio p que es una
% serie de potencias. El resultado también es una serie de potencias.
n=length(p);
py = [p.*[n:-1:1].^(-1),0];