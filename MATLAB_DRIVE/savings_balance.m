function k=number19(N,R,A)
val = [];
y =[];
for i =1:N
    val = [val,A*(1+(R/100))^i]
    y = [y,i];
end
balance = val';
year = y';
k = table(year,balance);
end