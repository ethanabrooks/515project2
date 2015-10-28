function output = plf_x(u, x)
if (x<0) || (x>1)
  error('No bueno. x is out-of-bounds! Try 0 <= x <= 1')
end
ux = 0 : 1/length(u) : 1;
u = [u u(end)];

