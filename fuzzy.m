clc;
clear all;
close all;
% t=input('enter the temperature:');
% s=input('enter the % coverage :');
%y1=0.05t-1.5;%30<t<50
%y2=-0.05t+3.5;%50<t<70
%y3=0.05t-2.5;%50<t<70
%y4=-0.05t+4.5;%70<t<90
 hot1=0;freeze=0;warm=0;cool=0;
 sunny=0;pcloudy=0;overcast=0;
 slow=0;speed=0;fast=0;
 for i=1:100
     t=i;
 for j=1:100
     s=j;
if t>0&&t<=30
    freeze=1;
end
if t>30&&t<=50
    cool=0.05*t-1.5;
    freeze=-0.05*t+2.5;
end
if t>50&&t<=70
    cool=-0.05*t+3.5;
    warm=0.05*t-2.5;
end
if t>70&&t<=90
   warm=-0.05*t+4.5;
   hot1=0.05*t-3.5;
end
if t>90&&t<=99
    hot1=1;
end

if s>0&&s<=20
    sunny=1;   
end
if s>20&&s<=40
    sunny=(2-0.05*s);   
end
if s>20&&s<=50
    pcloudy=0.0333*s-0.667;
end
if s>50&&s<=80
    pcloudy=-0.0333*s+2.667;
end
if s>60&&s<=80
    overcast=0.05*s-3;
end
if s>80&&s<=100
    overcast=1;
end

if sunny&&warm
    fast=min(sunny,warm);
end

if pcloudy&&cool
    slow=min(pcloudy,cool);
end

speed(i,j)=(slow*25)+(fast*75)/(slow+fast);
temp(i,j)=i;
cov(i,j)=j;
 end
 end
 surf(temp,cov,speed);
 xlabel('temp');
 ylabel('cov');
 zlabel('speed');