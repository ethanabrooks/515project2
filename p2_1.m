% create axes
clc
figure(1)
clf
axis([0 100 0 100]) 

% get input
[x, y] = ginput(4)
[X, Y] = draw_curve(x, y);
plot(x, y, X, Y)