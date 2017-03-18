function [ tmp ] = data_processing3( delay_mean,layout,i )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
name = ['C:\Users\Xwli\Desktop\matlab\time_layout',num2str(layout),'_', num2str(5*i), '.txt'];
ffid = fopen(name,'r');
tmp=0;
for j=1:50
  tline = fgets(ffid);
  total=0;
  for p=1:5*i
      tline=fgets(ffid);
      S = regexp(tline, '\s+', 'split');
      s1 = char(S{1});
      s2 = char(S{2});
      num1=str2num(s1);
      num2=str2num(s2);
      num(p)=(num2-num1-delay_mean(layout,i))*(num2-num1-delay_mean(layout,i));
      total=total+num(p);
  end
  total=total/(5*i);
  delay(j)=sqrt(total);
end
for j=1:50
    tmp=tmp+delay(j);
end
tmp=tmp/50;
fclose('all');
end

