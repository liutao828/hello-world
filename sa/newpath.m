
function zuobiao=newpath(zuobiao,length)
%������������������..
a=ceil(rand(1,2)*length);
qian=a(1);
hou=a(2);
temp=zuobiao(:,qian);
zuobiao(:,qian)=zuobiao(:,hou);
zuobiao(:,hou)=temp;