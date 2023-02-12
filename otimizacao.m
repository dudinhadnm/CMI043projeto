% informacoes para o grafico
[X,Y] = meshgrid(2:0.1:5,-1:0.1:2);
Z = f_el(X,Y);

% inicia o grafico
figure
contourf(X,Y,Z,10) %curvas de nivel

hold on

% informacoes iniciais para otimizacao
x0 = [-100;-50]
it_max = 1000;
tol = 10^(-6);
A = [6 0;0 6];

%plot(x0(1),x0(2),'b','MarkerSize',12)
%text(x0(1),x0(2),['(' 'x_0' ')'])

% resultados metodo do gradiente
disp("Metodo do gradiente")
[x,k] = gradiente(x0,@f, @gradf, A, it_max, tol)
grad_f = gradf(x);
nGrad = norm(grad_f)

plot(x(1),x(2),'g','MarkerSize',12)
text(x(1),x(2),['(' num2str(x(1)) ',' num2str(x(2)) ')'])

% resultados metodo dos gradientes conjugados
disp("Metodo dos gradientes conjugados")
[x2,k2] = gradienteConjugado(x0,@f, @gradf, A, it_max, tol)
grad_f = gradf(x2);
nGrad = norm(grad_f)

plot(x2(1),x2(2),'g','MarkerSize',12)
text(x2(1),x2(2),['(' num2str(x2(1)) ',' num2str(x2(2)) ')'])


hold off
colormap spring

% variaveis com tamanhos
SizeFontTitle = 12;
SizeFontlabel = 12;
SizeFontTick = 8;

% get current axis
set(0,'defaulttextInterpreter','tex')

%define titulo
title('f(x)', 'fontsize', SizeFontTitle)
xlabel('x_1', 'fontsize', SizeFontlabel)
ylabel('x_2', 'fontsize', SizeFontlabel)


# define unidades e tamanho da figura
set(gcf, 'PaperUnits', 'centimeters');
x_width=30;
y_width=30;
set(gcf, 'PaperPosition', [0 0.05 x_width/2 y_width/2]);

# salva a figura
saveas(gcf,'imagens/graficoConvergencia.png')


