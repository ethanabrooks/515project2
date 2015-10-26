u = [0 2 4 6 6 4 2 1 -1 -2 -4 -6 -6 -4 -2 0];
ux = 0:1/length(u):1-1/length(u);
stairs(ux,u)  % Stairstep plot
grid on
%disp(length(u));
%disp(length(ux));
w = [u u u u u u u u];
w = [u u u u u u u u u];
wx = 0:1/length(w):1-1/length(w);
stairs(wx,w)
