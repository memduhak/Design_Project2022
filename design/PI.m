K = 10;
z = 5; % Zero of PI controller
C3 = K * (s + z) / s;  % PI controller transfer function

Tcl = feedback(C3*P,1);  % Closed-loop system with PI controller
step(Tcl)  % Step response plot

% Bode plot for frequency analysis
figure(2)
bode(C3*P)
grid on
