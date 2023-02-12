function [x,k] = gradienteConjugado(x0,f, gradf, A, itermax, tol)
   d = - gradf(x0);
   k=0;
   x=x0;
   while (abs(gradf(x))>tol && k < itermax)
     t = (-(gradf(x)).'*d)/(d.'*A*d);
     x = x+t*d;
     beta = (d.'*A*gradf(x))/(d.'*A*d);
     d = -gradf(x)+beta*d;
     k=k+1;
   endwhile
endfunction
