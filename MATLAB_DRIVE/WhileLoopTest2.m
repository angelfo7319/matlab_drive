n = 10; % number of cells at the start of the first week.
number_of_weeks = 1;
total = ((3/4)*n)*3;
total = equation;
while equation < 100000
    total = equation;
    number_of_weeks = number_of_weeks + 1;
end
disp(number_of_weeks)
disp(total)

function fib = fibGenerator(N) 
f(1) = 1;
f(2) = 1;
for n = 3:N
    f(n) = f(n-1) + f(n-2);
end
fib = f(N)
disp(fib)
end