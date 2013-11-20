clear
hold on
sys=inline('[x(1)*(1-x(1)/7)-6*x(1)*x(2)/(7+7*x(1));0.2*x(2)*(1-0.5*x(2)/x(1))]','t','x')
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(sys,[0 100],[7.1 0.1],options);
plot(xa(:,1),xa(:,2))
axis([0 8 0 5])
fsize=15;
set(gca,'xtick',[0:2:8],'FontSize',fsize)
set(gca,'ytick',[0:2.5:5],'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off
