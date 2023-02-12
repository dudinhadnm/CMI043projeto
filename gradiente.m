function [x,k] = gradiente(x0,f, gradf, A, itermax, tol)
  x = x0;
  k=0;
  while (abs(gradf(x))>tol && k < itermax)
     d = -gradf(x);
     t = (d.'*d)/(d.'*A*d);
     x = x+t*d;
     k=k+1;
   endwhile
endfunction
