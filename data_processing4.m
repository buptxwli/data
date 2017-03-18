function [ tmp ] = data_processing4( total_mean,layout,i )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
name = ['C:\Users\Xwli\Desktop\matlab\time_layout',num2str(layout),'_', num2str(5*i), '.txt'];
ffid = fopen(name,'r');
tmp=0;
for j=1:50
  tline = fgets(ffid);
  if(tline(1,1)=='A')
       tline(1,1)='0';
       num=str2double(tline);
  end
  for p=1:5*i
      tline=fgets(ffid);
  end
  ans(j)=(num-total_mean(layout,i))*(num-total_mean(layout,i));
  tmp=tmp+ans(j);
end
tmp=tmp/50;
tmp=sqrt(tmp);
fclose('all');
end

