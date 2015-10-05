function point_on_curve = C(t, start_vals)
    n = length(start_vals);
    B = zeros(n, n);
    B(:, 1) = start_vals;
    for j = 1:n-1
        new_column = b(B(1:end - j,j), B(2:end - j + 1, j), t);
        B(:, j+1) = [new_column; zeros(j, 1)];
    end
    point_on_curve = B(1, n);
end
