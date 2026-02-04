Locations_volumexy = [1,7,8,17,22,27;28,18,16,2,10,8;3,7,4,5,2,6];
Grid = zeroes(30);
for x = 1:30
    WeeklyCost = 0
    for Index = Locations_volumexy
        Position = Index(1:2);
        Distance = Position - [x; y];
        Cost = 0.5*norm(Distance)*Index(3);
        WeeklyCost = WeeklyCost + Cost;
    end
    Grid(y,x) = WeeklyCost;
end
Grid
MinCost = min/Grid [] ('all');