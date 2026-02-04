function y = chp4num44(P,frequency,i)
switch frequency
    case 'monthly'
        y = P*((1+i/100)^120-1);
    case 'quarerly'
        y = P*((1+i/100)^40-1);
    case 'semiannualy'
        y = P*((1+i/100)^20-1);
    case 'anually'
        y = P*((1+i/100)^10-1);
    otherwise 'Invalid Input'
end