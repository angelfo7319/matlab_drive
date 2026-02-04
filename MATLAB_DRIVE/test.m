ii=1;
for tt= -pi: ((2*pi)/1000):pi
time(ii)=tt;
y1(ii)= exp(tt);
y2(ii)= sin(2*tt);
y3(ii)= sin(3*tt);
ii=ii+1;
end
figure(1);hold on;grid
plot(time,y1,'--r')
plot(time,y2,'-b')
plot(time,y3,':g')
xlabel('x')
ylabel('function values')
legend('y1','y2','y3')
figure(2);hold on; grid
subplot(3,1,1)
plot(time,y1)
xlabel('x')
ylabel('y1')
subplot(3,1,2)
plot(time,y2)
xlabel('x')
ylabel('y2')
subplot(3,1,3)
plot(time,y3)
xlabel('x')
ylabel('y3')