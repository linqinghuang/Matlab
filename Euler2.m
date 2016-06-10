h=0.1;
t=0:h:1;
N=length(t);
y=zeros(1,N);
y1=zeros(1,N);
y(1,1)=1;
y1(1,1)=1;

for k=2:N
    y(1,k) = y(1,k-1)+0.1*(-(y(1,k-1)*y(1,k-1)));
end

for k=2:N
    y1(1,k) = y1(1,k-1)+0.05*(-y1(1,k-1)^2-y(1,k)^2);
end
y3=1./(1+t);


plot(t,y,'-xg');
hold on;
grid on;
plot(t,y1,'-.xr');
hold on;
plot(t,y3);
hold off;