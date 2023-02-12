function y = f(x)
  A = [6 0; 0 6];
  b = [-20;-4];
  y = (1/2)*x.'*A*x+b.'*x+48;
endfunction
