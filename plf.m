function plf(u)
ux = 0 : 1/length(u) : 1 - 1/length(u);
stairs(ux,u)  % Stairstep plot
grid on
