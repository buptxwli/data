for m=1:4
    for n=1:20
        total_mean(m,n)=data_processing1(m,n);  %total_mean(p,i)means layoutp_10*i average total time
        delay_mean(m,n)=data_processing2(m,n);  %delay_mean(p,i)means layoutp_10*i average delay time for every car
        delay_stdtr(m,n)=data_processing3(delay_mean,m,n);%delay_mean(p,i)means layoutp_10*i STDTR delay time for every car
        total_stdtr(m,n)=data_processing4(total_mean,m,n);
    end
end
%  x=10:10:80;
%  y1=total_mean(1,x/10);
%  y2=total_mean(2,x/10);
%  y3=total_mean(3,x/10);
%  y4=total_mean(4,x/10);
%  plot(x,y1,'s-',x,y2,'x-',x,y3,'o-',x,y4,'p-');
%  grid on;
%  xlabel('车辆数')
%  ylabel('平均行驶总单位时间')
x=5:5:100;
y1=delay_mean(1,x/5);
y2=delay_mean(2,x/5);
y3=delay_mean(3,x/5);
y4=delay_mean(4,x/5);
figure(1)
plot(x,y1,'s-',x,y2,'x-',x,y3,'o-',x,y4,'d-')
grid on;
xlabel('车辆数')
ylabel('平均每辆车延误单位时间')
legend('布局1','布局2','布局3','布局4')
hold on
x=5:5:100;
y1=delay_stdtr(1,x/5);
y2=delay_stdtr(2,x/5);
y3=delay_stdtr(3,x/5);
y4=delay_stdtr(4,x/5);
figure(2)
plot(x,y1,'s-',x,y2,'x-',x,y3,'o-',x,y4,'d-')
grid on;
xlabel('车辆数')
ylabel('每辆车平均延误方差单位时间')
legend('布局1','布局2','布局3','布局4')
hold on;
x=5:5:100;
y1=total_mean(1,x/5);
y2=total_mean(2,x/5);
y3=total_mean(3,x/5);
y4=total_mean(4,x/5);
figure(3)
plot(x,y1,'s-',x,y2,'x-',x,y3,'o-',x,y4,'d-')
grid on;
xlabel('车辆数')
ylabel('所有车辆完成任务所需平均时间')
legend('布局1','布局2','布局3','布局4')
hold on;
x=5:5:100;
y1=total_stdtr(1,x/5);
y2=total_stdtr(2,x/5);
y3=total_stdtr(3,x/5);
y4=total_stdtr(4,x/5);
figure(4)
plot(x,y1,'s-',x,y2,'x-',x,y3,'o-',x,y4,'d-')
grid on;
xlabel('车辆数')
ylabel('所有车辆完成任务所需时间方差')
legend('布局1','布局2','布局3','布局4')