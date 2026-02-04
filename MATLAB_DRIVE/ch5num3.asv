f=@(x) x.^3-3*x.^2+5*x.*sin(pi*x/4-5*pi/4)+3;
x=-1:0.01:4; 
y=f(x);

x1=[-1 4]; y1=x1*0; plot(x1,y1,'k'); 
hold on

x1=-0.48;
x2=1.14;
x3=3.83;

Root1 = fzero(f,x1);
Root2 = fzero(f,x2);
Root3 = fzero(f,x3);
fprintf('\n\nRoots are: %.6f , %.6f , %.6f\n\n', Root1,Root2,Root3);
x2=[Root1 Root2 Root3];
y2=f(x2);

plot(x,y,'-',x2,y2,'s','LineWidth',1.5);
xlabel('x');
ylabel('f(x)');
grid on;


