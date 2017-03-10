for m=1:4
    for n=1:20
        total_mean(m,n)=data_processing1(m,n);  %total_mean(p,i)means layoutp_10*i average total time
        delay_mean(m,n)=data_processing2(m,n);  %delay_mean(p,i)means layoutp_10*i average delay time for every car
        delay_stdtr(m,n)=data_processing3(delay_mean,m,n);%delay_mean(p,i)means layoutp_10*i STDTR delay time for every car
        if(m==1 || m==3)
            deadlock(m,n)=data_processing4(m,n)/20;
        end
    end
end

