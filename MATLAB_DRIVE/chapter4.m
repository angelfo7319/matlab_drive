function fval = chapter4(x, y)

if(x>=0 && y>=0)
    fval = x*y; %1st case
   elseif (x>=0 && y<=0)
    fval = x*y^2; %2nd case
   elseif (x<0 && y>=0)
    fval = x^2*y; %3rd case
   else
    fval = x^2*y^2; %4th case
   end;
end