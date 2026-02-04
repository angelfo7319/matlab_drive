D = 6;
Lab = 3;
Lac = linspace(4,6.7,100);
W = [0;2000];
n=1;
for k =1:100
    Theta(k) = acos((D.^2 + Lab.^2 - Lac(k).^2)/(2.*D.*Lab));
    Phi(k) = asin(Lab.*sin(Theta(k))./Lac(k));
    T = [-cos(Theta(K)), cos(Phi(k)); sin(Theta(k)), sin(Phi(k))]/W;
    
    if all(T<2000)
        Tnew(:,:,n) = T;
        Tac(n) = Tnew(1,:,n);
        Tab(n) = Tnew(2,:,n);
        n = n+1;
    end
end
x = ([1:99]/100)+4;
disp('The minimum length is');
disp(x(1));
disp('The corresponding tension forces are')
disp(Tac(1));
disp(Tab(1));

plot(x,Tab,x,Tac);
xlabel('Length of AC(ft)');
ylabel('Tension Force(lb)');
legend('T_A_B','T_A_C');