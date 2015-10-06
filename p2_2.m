% create axes
clc
figure(1)
clf
axis([0 100 0 100]) 

% get input
poly = impoly(); % interactive placement of polygon on axes
positions = poly.getPosition(); % matrix with rows representing vertices
cells = num2cell(positions, 1); 
[x, y] = cells{:}; % x is vector of x coordinates. Same for y.
[X, Y] = draw_curve(x, y);
plot(x, y, X, Y)