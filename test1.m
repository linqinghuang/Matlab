h=0.1;
t=0:h:1;
N=length(t);
y=zeros(1,N);
y(1,1)=1;
for k=2:N
    y(1,k) = y(1,k-1)+0.1*(y(1,k-1)-2*(k-1)*0.1/y(1,k-1));
end
subplot(1,1,1);
plot(t,y);