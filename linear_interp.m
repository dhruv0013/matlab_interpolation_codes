function [v] = linear_interp(x,y,u)
%v = linear_interp(x,y,u) find the lineear interpolation of p(x)
%with p(x(j) = y(j) and returns  v(k) = p(u(k))

%first divided difference
 delta = diff(y)./diff(x);
 
% find subinterval indices k so that x(k) <= u < x(k+1)

n  = length(x);
k = ones(size(u));
for j = 2:n-1
    k(x(j) <=u ) = j;
end
 % evaluate interpolant 
  s = u - x(k);
  v = y(k) + s.*delta(k);
    

end