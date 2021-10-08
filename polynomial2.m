n = 5;
x = linspace(1,4,5);
y = [4 2 5 6 3];
y = y';

for i = 1:5
    for j = 1:5
        g(i,j) = x(i)^(j-1);
    end
end
G = inv(g);
m = G*y;

xi = linspace(x(1),x(5),100);
yi = zeros(1,100);

for j = 1:5
    b = m(j,1)*(xi.^(j-1));
    yi = yi+b;
end
plot(x,y,'o',xi,yi,':.')