h=0.1;
t=0:h:1;
N=length(t);
y=ones(1,N);
zy=ones(1,N);
yp=zeros(1,N);
for k=1:(N-1)
    y(k+1)=y(k)+h*(y(k)-2*t(k)./y(k));% 欧拉算法
    yp(k+1)=zy(k)+h*(zy(k)-2*t(k)./zy(k));% 估算量
    zy(k+1)= zy(k)+0.5*h*(zy(k)-2*t(k)./zy(k)+yp(k+1)-2*t(k+1)./yp(k+1));% 改进型欧拉
end
  z=sqrt(1+2*t);
  plot(t,zy,':k',t,y,'-rp',t,z,'-b*','linewidth',1.1);
  grid on;
  legend('改进型欧拉','欧拉算法','解析函数');