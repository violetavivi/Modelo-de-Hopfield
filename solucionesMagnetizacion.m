x = -4:0.2:4;
beta = 2;
tanh1 = @(x) tanh(x);
lin2 = @(beta,x) x/beta;

ytanh = tanh1(x);
ylin = lin2(beta,x);
%%
plot(x,ytanh,'k','LineWidth',2)
hold on
xlim([-4 4])
ylim([-1.5 1.5])
plot(x,ylin,'--b','LineWidth',2)
hold on
beta = 0.5;
ylin = lin2(beta,x);
plot(x,ylin,':b','LineWidth',2)
xl = xlabel('x');
xl.FontSize = 16;
yl = ylabel('\langle s \rangle');
yl.FontSize = 16;
l = legend('tanh(x)','\beta = 2','\beta = 0.5','Location','southeast');
l.FontSize = 14;
xt = get(gca, 'XTick');
set(gca, 'FontSize', 16)
yt = get(gca, 'YTick');
set(gca, 'FontSize', 16)