r = 1.3; s = .5; u = .7; v = 1.6; h = .001;
 P = 1; Q = 3; y = [P Q];
for t = 1:10000;
dP = (r-s*Q)*P*h; dQ = (-u+v*P)*Q*h; P = P+dP; Q = Q+dQ; y = [y; P Q];
end
plot(y(:,1),y(:,2),[0 1.2],[r/s r/s],[u/v u/v],[0 6])
xlabel('size of prey population')
ylabel('size of predator population')