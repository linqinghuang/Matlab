h = 0.1;
t = 0:h:1;
N = length(t);
y1 = zeros(1,N);
y1(1,1) = 1;
y2 = zeros(1,N);
y2(1,1) = 1;
for k = 2:N
    y1(1,k)=y1(1,k-1)+h*(y1(1,k-1)-(2*(k-2)*0.1)/y1(1,k-1));
end
for k = 2:N
    y2(1,k)=y2(1,k-1)+h/2*(y2(1,k-1)-(2*(k-2)*0.1)/y2(1,k-1)+y1(1,k)-(2*(k-1)*0.1)/y1(1,k));
end
y = sqrt(1+2*t);
plot(t,y,'r');
hold on;
grid on;
plot(t,y1,'g');
plot(t,y2,'b');
legend('解析线','欧拉线','改进欧拉线');