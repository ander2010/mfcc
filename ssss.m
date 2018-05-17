ts=1/44100;
tao=1/(2*pi*1000)
A=(2*tao)/ts 
[x s]= audioread('hizar.mp3');



% num=1;
% denom=[1 5 8];
% hs= tf(num,denom);
% step(hs)
% hold on ;
 ykk=0;
 anterior=31
 d=[];
ts=0.1;
t=0:ts:3;

for i=1:1:29 
    yk=-(1-A)/(A+1)*ykk + (1/(A+1))*x(i);
   %yk=(1+((((2*ykk)-anterior))/ts^2)+((5*ykk)/ts))/((1/ts^2)+(5/ts)+8);
   anterior=ykk
   ykk=yk
   d=[d yk]
   
 end
  d=[0 0 d];
 sound(d);
 %plot (t,d,'.r');


