[x,y] = meshgrid(-5:0.1:5);
z=(x.^2)-(2*x.*y)+(4*y.^2);
subplot(2,1,1)
mesh(x,y,z)
grid on
xlabel('x')
zlabel('z')
title('Surface Plot')
subplot(2,1,2)
contour(x,y,z)
xlabel('x')
ylabel('y')
title('Contour Plot')