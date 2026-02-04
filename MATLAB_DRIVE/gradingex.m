name = input("What's the student's name? ", "s")

duedate = [datetime(2021, 1, 29), datetime(2021, 2, 5), datetime(2021, 2, 12), datetime(2021, 2, 19)];
maxpoints = [20, 50, 50, 30,20,20,40,50];
weights = [8,10,10,12,15,10,20,15];

scores = zeros(size(maxpoints));
for k = 1:length(scores)
    percentpts = assignscore(duedate, k , maxpoints, weights);
    scores(k) = percentpts;
end
total = sum(scores);

if total >= 90
    grade = 'A';
elseif total>= 80
    grade = 'B';
elseif total>= 70
    grade = 'C';
elseif total>= 60
    grade = 'D';
else
    grade = 'F';
end

disp(name)
disp(grade)