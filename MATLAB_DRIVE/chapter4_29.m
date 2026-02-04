Data_values = [1 1 28 3; 2 7 18 7; 3 8 16 4; 4 17 2 5; 5 22 10 2; 6 27 8 6; 7 39 5 1];
Location_x = Data_values (:,2);
Location_y = Data_values (:,3);
Volume = Data_values (:,4);

%Define the array of cost values.
Cost_values = zeros(41,31);

for i = 0:40
for j = 0:30
    Cost_values(i+1,j+1)=0;


for k = 1:7
    Cost_values(i+1,j+1) = Cost_values(i+1,j+1) + 0.5 * Volume(k) * hypot((i- Location_x(k)),(j- Location_y(k)));

end
end
end

%Compute the minimum cost
[dx dy] = find(Cost_values == min(Cost_values (:)));
dx = dx-1;
dy = dy-1;

fprintf('The location of the distribution that minimizes the total weekly cost is (%d,%d)\n', dx, dy);