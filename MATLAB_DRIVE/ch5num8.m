t = 0:0.1:10;
x = t;
y = 0.5.*t.^2+10;
ybound = 2.*x + 6;
d = (-2*x+y-6)/sqrt((-2).^2+1.^2);
plot(x,y,x,ybound), legend ('Path of vessel', ' Boundary'),xlabel('x'), ylabel('y');
