r = 1.3; s = .5; u = .7; v = 1.6; h = .001;
 P = 1; Q = 3; y = [P Q];
for t = 1:10000;
dP = (r-s*Q)*P*h; dQ = (-u+v*P)*Q*h; P = P+dP; Q = Q+dQ; y = [y; P Q];
end
 plot(0:10000,y)
legend('predator','prey')