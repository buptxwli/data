function [ tmp ] = data_processing2( layout , i )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
name = ['C:\Users\Xwli\Desktop\layout',num2str(layout),'\layout',num2str(layout),'_', num2str(10*i), '.txt'];
ffid = fopen(name,'r');
tmp=0;
for j=1:20
  tline = fgets(ffid);
  total=0;
  for p=1:10*i
      tline=fgets(ffid);
      S = regexp(tline, '\s+', 'split');
      s1 = char(S{1});
      s2 = char(S{2});
      num1=str2num(s1);
      num2=str2num(s2);
      num(p)=num2-num1;
      total=total+num(p);
  end
  total=total/(10*i);
  delay(j)=total;
end
for j=1:20
    tmp=tmp+delay(j);
end
tmp=tmp/20;
fclose('all');
end

