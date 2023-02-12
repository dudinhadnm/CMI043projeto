[X,Y] = meshgrid(2:0.1:5,-1:0.1:2);
Z = f_el(X,Y);

%----- superficie
figure
surf(X,Y,Z) %superficie
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
saveas(gcf,'imagens/graficoFuncao.png')

%%----- contour
figure
contourf(X,Y,Z,10) %curvas de nivel

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
saveas(gcf,'imagens/graficoCurvas.png')
