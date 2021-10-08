x = [1,2,3,4,5,6,7,8,9,10];
y = [10,20,44,55,66,778,223,66,77,12];
n = length(x);
l = zeros(n,n);

for i  = 1:n %% for rows
    v = 1;

    for j = 1:n %% for making polynomials
        if i ~=j
            v = conv(v,poly(x(j)))/(x(i)-x(j));
        end
    end
    l(i,: ) = v*y(i); %% to put the given calculation in the given n*n matrix
end
l;
p = sum(l); %% lagrange polynomial
f = flip(p); %% to genrate the lagrange polynomial
for k = 10 :-1:1
    fprintf('(% .2fx^%d)+',f(k),k-1)

end
X = linspace(x(1),x(n),100);
Y = polyval(p,X);
plot(x,y,'o',X,Y,':.')






