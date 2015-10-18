% get input
poly = impoly(); % interactive placement of polygon on axes
shape = poly.getPosition(); % matrix with rows representing vertices

% shape = rand(4, 2);
num_columns = size(shape, 1);
theta = 45; % angle of rotation
trans_vector = [1, 1];

rad_theta = degtorad(theta);
trans_matrix = ones(num_columns, 1) * trans_vector;
rotation = [cos(rad_theta), -sin(rad_theta); 
            sin(rad_theta), cos(rad_theta)];
new_shape = shape * rotation + trans_matrix;
x = shape(:, 1);
y = shape(:, 2);
x_new = new_shape(:, 1);
y_new = new_shape(:, 2);
plot(x, y, x_new, y_new)