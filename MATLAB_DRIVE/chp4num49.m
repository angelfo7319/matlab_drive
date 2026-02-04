P(1)=50;
I(1)=50;
week=1:10;
S=[50 55 60 70 70 75 80 80 90 55];

for i=2:10
P(i)=S(i-1);
I(i)=P(i-1)+I(i-1)-S(i-1);
if I(i)<0
I(i)=[];
break
end
end
TT=table(week',I',P',S','VariableNames',{'Week','Inventory','Production','Sales'});
disp(TT)
bar(week,I)
xlabel('Week')
ylabel('Carts in Inventory')