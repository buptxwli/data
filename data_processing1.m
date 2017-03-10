function [ tmp ] = data_processing1( layout,i )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%for i=1:20
name = ['C:\Users\Xwli\Desktop\layout',num2str(layout),'\layout',num2str(layout),'_', num2str(10*i), '.txt'];
ffid = fopen(name,'r');
for j=1:20
  tline = fgets(ffid);
  if(layout==1 || layout==3)
      if(tline(1,1)=='A')
          tline(1,1)='0';
          num(j)=str2double(tline);
      else
          S = regexp(tline, '\s+', 'split');
          s1 = char(S{1});
          s2 = char(S{2});
          s1(1,1)='0';
          num(j)=str2double(s1);
      end
  else
      num(j)=str2double(tline);
  end
  for p=1:10*i
      tline=fgets(ffid);
  end
end
tmp=0;
for j=1:20
    tmp=tmp+num(j);
end
tmp=tmp/(20);
fclose('all');

end

