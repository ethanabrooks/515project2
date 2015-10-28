function [new_shape] = R 
    [theta, trans_vector, shape];
    new_shape = rotx(theta) * shape + trans_vector;
