
function [X, Y] = draw_curve(x, y)
% get series of vals for t
n = input('number of subdivisions: ');
interval = 1/n;
T = 0:interval:1; % n evenly spaced intervals between 0 and 1

% apply C function to all values in T
X = arrayfun(@(t) C(t, x), T); % using x coords
Y = arrayfun(@(t) C(t, y), T); % using y coords
end