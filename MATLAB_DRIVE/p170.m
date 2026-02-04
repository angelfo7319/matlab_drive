function [h,v,t] = p170(vo,A,g)
t_hit = 2*(vo/g)*sind(A);
t = 0:0.01:t_hit;
h = vo*t*sind(A) - 0.5*g*t.^2;
v = sqrt(vo^2 - 2*vo*g.*t*sind(A) + g^2*t.^2);


end
