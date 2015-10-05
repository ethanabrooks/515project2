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

% get series of vals for t
n = 100;
interval = 1/n;
T = 0:interval:1; % n evenly spaced intervals between 0 and 1

% apply C function to all values in T
X = arrayfun(@(t) C(t, x), T); % using x coords
Y = arrayfun(@(t) C(t, y), T); % using y coords

plot(x, y, X, Y)