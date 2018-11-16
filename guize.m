%时间二阶空间二阶有限差分，无边界条件2013/9/24 23:00第一次自己编写最简单的matlab程序%
clear;clc;
dt=0.002;
dh=8;
c=2000;
A=(c*dt/dh)^2;
d=dt*(i*dh)^2;
p=zeros(101,101,301);
w=zeros(101,101,301);
v=zeros(101,101,301);

for k=2:300
    for i=2:100
        for j=2:100
            if i==50&j==50
            p(i,j,k+1)=A*(p(i+1,j,k)+p(i-1,j,k)-4*p(i,j,k)+p(i,j+1,k)+p(i,j-1,k))+2*p(i,j,k)-p(i,j,k-1)+(1-2*(pi*30*(k-30)/1000)^2)*exp(-(pi*30*(k-30)/1000)^2);
            else
             p(i,j,k+1)=A*(p(i+1,j,k)+p(i-1,j,k)-4*p(i,j,k)+p(i,j+1,k)+p(i,j-1,k))+2*p(i,j,k)-p(i,j,k-1);
        
            end
        end
    end
    for i=2:100
        u(k,i)=p(i,j);
    end
end
% for k=1:30:120
% figure(k)
% pcolor(0:100,0:100,p(:,:,k));
% %colormap jet;
% colormap(gray);
% shading interp;
% 
% xlabel('X'),ylabel('Y');
% axis square;
% end
figure(1)
 pcolor(u);

 colormap(gray);
%shading interp;
% 
 xlabel('X'),ylabel('T');
axis square;
% end
