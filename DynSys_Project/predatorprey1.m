clear
hold on
sys=inline('[x(1)*(1-x(1)/7)-6*x(1)*x(2)/(7+7*x(1));0.2*x(2)*(1-0.5*x(2)/x(1))]','t','x')
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(sys,[0 200],[7.1 0.1],options);
plot(t,xa(:,1),'r')
plot(t,xa(:,2),'b')
legend('prey','predator')
axis([0 200 0 8])
fsize=15;
set(gca,'xtick',[0:50:200],'FontSize',fsize)
set(gca,'ytick',[0:2:8],'FontSize',fsize)
xlabel('time','FontSize',fsize)
ylabel('population','FoSize',fsize)
grid on
hold off
