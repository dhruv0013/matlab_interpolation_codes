x = 0:10;
y = sin(x);
u = linspace(0,10,1000);
v = interp1(x,y,u,'nearest');
plot(x,y,'o',u,v,':.')


