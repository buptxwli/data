function [ tmp ] = data_processing1( layout,i )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%for i=1:20
name = ['C:\Users\Xwli\Desktop\matlab\time_layout',num2str(layout),'_', num2str(5*i), '.txt'];
ffid = fopen(name,'r');
for j=1:50
  tline = fgets(ffid);
  if(tline(1,1)=='A')
       tline(1,1)='0';
       num(j)=str2double(tline);
  end
  for p=1:5*i
      tline=fgets(ffid);
  end
end
tmp=0;
for j=1:50
    tmp=tmp+num(j);
end
tmp=tmp/(50);
fclose('all');

end

