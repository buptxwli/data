function [ cnta ] = data_processing4( layout,i )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%for i=1:20
name = ['C:\Users\Xwli\Desktop\layout',num2str(layout),'\layout',num2str(layout),'_', num2str(10*i), '.txt'];
ffid = fopen(name,'r');
cnta=0;
cntb=0;
for j=1:20
  tline = fgets(ffid);
  if(tline(1,1)=='A')
      tline(1,1)='0';
      cnta=cnta+1;
  else
      cntb=cntb+1;
  end
end
fclose('all');

end

