t = -3:0.1:3;
xt = (10.*(e.^(-0.5.*t))).*(sin(3.*t+ 5));
yt = (7.*(e.^(-0.4.*t)) ).*(cos(5.*t- 3));

plot(t, xt,'b', t, y_t, 'r');

title(" Oscillations in electric circuits and vibrations of machines and structures ");

legend("x(t) = 12e^-0.5t sin(3t+5)", "y(t) = 7e^-0.4t cos(5t-3)");

xlabel('t');