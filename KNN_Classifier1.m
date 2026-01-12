clc;
clear all;
close all;
%%
%Training Inputs and Feature Extraction
A1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject1\a1t1.mat');
A2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject2\a1t1.mat');
A3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a1t1.mat');
A4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a1t1.mat');
A5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a1t1.mat');

A=[A1.sensor_readings;A2.sensor_readings;A3.sensor_readings;A4.sensor_readings;A5.sensor_readings];
ip11=A(:,1);
ip12=A(:,2);
ip13=A(:,3);

k=1;i=1;
for i=1:i+24:length(ip11)-49
   
    a=ip11(i:i+49);a1=ip12(i:i+49);a2=ip13(i:i+49);
    
    for j=1:length(a)
        mag1(j)=sqrt(sum(a(j).^2+a1(j).^2+a2(j).^2));
    end
    
    X1(k)=mean(mag1); 
    X2(k)=entropy(mag1);
    X3(k)=sum(mag1.^2)/50;
    X4(k)=rms(mag1);
  
    k=k+1;  
end
%%
B1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject1\a4t2.mat');
B2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject2\a4t1.mat');
B3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a4t1.mat');
B4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a4t2.mat');
B5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a4t1.mat');
B6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a4t1.mat');

B=[B1.sensor_readings;B2.sensor_readings;B3.sensor_readings;B4.sensor_readings;B5.sensor_readings;B6.sensor_readings];

ip21=B(:,1);
ip22=B(:,2);
ip23=B(:,3);

k=1;i=1;
for i=1:i+24:length(ip21)-49
    
    b=ip21(i:i+49);b1=ip22(i:i+49);b2=ip23(i:i+49);
    
    for j=1:length(b)
        mag2(j)=sqrt(sum(b(j).^2+b1(j).^2+b2(j).^2));
    end
    
    X5(k)=mean(mag2); 
    X6(k)=std(mag2);   
    X7(k)=sum(mag2.^2)/50;
    X8(k)=iqr(mag2);
    
    k=k+1; 
end
%%
C1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a5t2.mat');
C2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a5t1.mat');
C3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a5t1.mat');
C4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a5t2.mat');
C5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a5t1.mat');
C6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject11\a5t1.mat');


C=[C1.sensor_readings;C2.sensor_readings;C3.sensor_readings;C4.sensor_readings;C5.sensor_readings;C6.sensor_readings];

ip31=C(:,1);
ip32=C(:,2);
ip33=C(:,3);

k=1;i=1;
for i=1:i+24:length(ip31)-49
    
    c=ip31(i:i+49);c1=ip32(i:i+49);c2=ip33(i:i+49);
    
   for j=1:length(c)
        mag3(j)=sqrt(sum(c(j).^2+c1(j).^2+c2(j).^2));
    end
   
    X9(k)=mean(mag3); 
    X10(k)=iqr(mag3); 
    X11(k)=sum(mag3.^2)/50;
    X12(k)=rms(mag3);
  
    k=k+1; 
end
%%
D1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject11\a8t1.mat');
D2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject6\a8t1.mat');
D3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a8t1.mat');
D4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a8t1.mat');
D5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a8t1.mat');
D6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a8t1.mat');

D=[D1.sensor_readings;D2.sensor_readings;D3.sensor_readings;D4.sensor_readings;D5.sensor_readings;D6.sensor_readings];

ip41=D(:,1);
ip42=D(:,2);
ip43=D(:,3);

k=1;i=1;
for i=1:i+24:length(ip41)-49
    
    d=ip41(i:i+49);d1=ip42(i:i+49);d2=ip43(i:i+49);
    
    for j=1:length(d)
        mag4(j)=sqrt(sum(d(j).^2+d1(j).^2+d2(j).^2));
    end
    
    X13(k)=mean(mag4); 
    X14(k)=median(mag4); 
    X15(k)=sum(mag4.^2)/50;
    X16(k)=rms(mag4);
   
    k=k+1; 
    
end
%%
Y1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a9t2.mat');
Y2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject2\a9t1.mat');
Y3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a9t1.mat');
Y4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject11\a9t2.mat');
Y5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a9t1.mat');
Y6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a9t1.mat');

Y=[Y1.sensor_readings;Y2.sensor_readings;Y3.sensor_readings;Y4.sensor_readings;Y5.sensor_readings;Y6.sensor_readings];

ip51=Y(:,1);
ip52=Y(:,2);
ip53=Y(:,3);

k=1;i=1;
for i=1:i+24:length(ip51)-49
    
    e=ip51(i:i+49);e1=ip52(i:i+49);e2=ip53(i:i+49);
    
    for j=1:length(e)
        mag5(j)=sqrt(sum(e(j).^2+e1(j).^2+e2(j).^2));
    end
 
    X17(k)=mean(mag5); 
    X18(k)=var(mag5); 
    X19(k)=sum(mag5.^2)/50;
    X20(k)=iqr(mag5);
    
    k=k+1; 
end
%%
W1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a10t2.mat');
W2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a10t1.mat');
W3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a10t1.mat');
W4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject11\a10t2.mat');
W5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a10t1.mat');
W6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a10t1.mat');

W=[W1.sensor_readings;W2.sensor_readings;W3.sensor_readings;W4.sensor_readings;W5.sensor_readings;W6.sensor_readings];

ip61=W(:,1);
ip62=W(:,2);
ip63=W(:,3);

k=1;i=1;
for i=1:i+24:length(ip61)-49
    
    f=ip61(i:i+49);f1=ip62(i:i+49);f2=ip63(i:i+49);
    
   for j=1:length(f)
        mag6(j)=sqrt(sum(f(j).^2+f1(j).^2+f2(j).^2));
   end
   
    X21(k)=mean(mag6); 
    X22(k)=std(mag6); 
    X23(k)=sum(mag6.^2)/50;
    X24(k)=rms(mag6);
   
     k=k+1;
     
end

%%
%Testing Inputs and Feature Extraction
E1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject3\a1t3.mat');
E2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a1t1.mat');
E3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject5\a1t3.mat');
E4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject6\a1t1.mat');
E5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject7\a1t3.mat');
E6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject8\a1t1.mat');
E7=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a1t3.mat');
E8=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a1t3.mat');
E9=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a1t1.mat');
E10=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a1t3.mat');

E=[E1.sensor_readings;E2.sensor_readings;E3.sensor_readings;E4.sensor_readings;E5.sensor_readings;E6.sensor_readings;E7.sensor_readings;E8.sensor_readings;E9.sensor_readings;E10.sensor_readings];

ip71=E(:,1);
ip72=E(:,2);
ip73=E(:,3);
k=1;i=1;
for i=1:i+24:length(ip71)-49
    
    g=ip71(i:i+49);g1=ip72(i:i+49);g2=ip73(i:i+49);
    
    for j=1:length(g)
        mag7(j)=sqrt(sum(g(j).^2+g1(j).^2+g2(j).^2));
    end
    X25(k)=mean(mag7); 
    X26(k)=entropy(mag7); 
    X27(k)=sum(mag7.^2)/50;
    X28(k)=rms(mag7);
   
     k=k+1;
     
end

% F=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a4t1.mat');
%%
F1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject13\a4t1.mat');
F2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a4t1.mat');
F3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject5\a4t3.mat');
F4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject6\a4t1.mat');
F5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject7\a4t3.mat');
F6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject8\a4t1.mat');
F7=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a4t3.mat');
F8=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject10\a4t3.mat');
F9=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a4t1.mat');
F10=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject14\a4t3.mat');

F=[F1.sensor_readings;F2.sensor_readings;F3.sensor_readings;F4.sensor_readings;F5.sensor_readings;F6.sensor_readings;F7.sensor_readings;F8.sensor_readings;F9.sensor_readings;F10.sensor_readings];
ip81=F(:,1);
ip82=F(:,2);
ip83=F(:,3);

k=1;i=1;
for i=1:i+24:length(ip81)-49
    
    h=ip81(i:i+49);h1=ip82(i:i+49);h2=ip83(i:i+49);
    
    for j=1:length(h)
        mag8(j)=sqrt(sum(h(j).^2+h1(j).^2+h2(j).^2));
    end
    
    X29(k)=mean(mag8); 
    X30(k)=std(mag8);
    X31(k)=sum(mag8.^2)/50;
    X32(k)=iqr(mag8);
   
     k=k+1;
end
%%
G1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject1\a5t4.mat');
G2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject2\a5t2.mat');
G3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject3\a5t1.mat');
G4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a5t1.mat');
G5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject5\a5t1.mat');
G6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject6\a5t1.mat');
G7=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject7\a5t1.mat');
G8=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject8\a5t1.mat');

G=[G1.sensor_readings;G2.sensor_readings;G3.sensor_readings;G4.sensor_readings;G5.sensor_readings;G6.sensor_readings;G7.sensor_readings;G8.sensor_readings];

ip91=G(:,1);
ip92=G(:,2);
ip93=G(:,3);

k=1;i=1;
for i=1:i+24:length(ip91)-49
    
    I=ip91(i:i+49);I1=ip92(i:i+49);I2=ip93(i:i+49);
    
    for j=1:length(I)
        mag9(j)=sqrt(sum(I(j).^2+I1(j).^2+I2(j).^2));
    end
    
    X33(k)=mean(mag9); 
    X34(k)=iqr(mag9);
    X35(k)=sum(mag9.^2)/50;
    X36(k)=rms(mag9);
   
     k=k+1;
end
%%
H1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject1\a8t1.mat');
H2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a8t2.mat');
H3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject5\a8t5.mat');
H4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject2\a8t1.mat');
H5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject7\a8t3.mat');
H6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject8\a8t1.mat');
H7=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a8t3.mat');
H8=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject3\a8t3.mat');

H=[H1.sensor_readings;H2.sensor_readings;H3.sensor_readings;H4.sensor_readings;H5.sensor_readings;H6.sensor_readings;H7.sensor_readings;H8.sensor_readings];

ip101=H(:,1);
ip102=H(:,2);
ip103=H(:,3);

k=1;i=1;
for i=1:i+24:length(ip101)-49
    
    J=ip101(i:i+49);J1=ip102(i:i+49);J2=ip103(i:i+49);
    
    for j=1:length(J)
        mag10(j)=sqrt(sum(J(j).^2+J1(j).^2+J2(j).^2));
    end
    X37(k)=mean(mag10); 
    X38(k)=median(mag10);
    X39(k)=sum(mag10.^2)/50;
    X40(k)=rms(mag10);
   
     k=k+1;
    
end
%%
 U1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject1\a9t4.mat');
 U2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject6\a9t4.mat');
 U3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject3\a9t4.mat');
 U4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a9t4.mat');
 U5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject5\a9t4.mat');
 U6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject7\a9t4.mat');
 U7=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject8\a9t4.mat');
 U8=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject9\a9t4.mat');
 
 U=[U1.sensor_readings;U2.sensor_readings;U3.sensor_readings;U4.sensor_readings;U5.sensor_readings;U6.sensor_readings;U7.sensor_readings;U8.sensor_readings];

ip111=U(:,1);
ip112=U(:,2);
ip113=U(:,3);

k=1;i=1;
for i=1:i+24:length(ip111)-49
    
    K=ip111(i:i+49);K1=ip112(i:i+49);K2=ip113(i:i+49);
    
    for j=1:length(K)
        mag11(j)=sqrt(sum(K(j).^2+K1(j).^2+K2(j).^2));
    end
    
    X41(k)=mean(mag11); 
    X42(k)=var(mag11);
    X43(k)=sum(mag11.^2)/50;
    X44(k)=iqr(mag11);
   
     k=k+1;
end
%%
% V=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject12\a10t1.mat');

V1=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject1\a10t1.mat');
V2=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject2\a10t1.mat');
V3=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject3\a10t1.mat');
V4=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject4\a10t1.mat');
V5=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject5\a10t1.mat');
V6=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject6\a10t1.mat');
V7=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject7\a10t1.mat');
V8=load('C:\Users\uttiu\Desktop\Activity DATA SET1\7\USC-HAD\Subject8\a10t1.mat');

V=[V1.sensor_readings;V2.sensor_readings;V3.sensor_readings;V4.sensor_readings;V5.sensor_readings;V6.sensor_readings;V7.sensor_readings;V8.sensor_readings];

ip121=V(:,1);
ip122=V(:,2);
ip123=V(:,3);

k=1;i=1;
for i=1:i+24:length(ip121)-49
    
    L=ip121(i:i+49);L1=ip122(i:i+49);L2=ip123(i:i+49);
    
    for j=1:length(L)
        mag12(j)=sqrt(sum(L(j).^2+L1(j).^2+L2(j).^2));
    end
    X45(k)=mean(mag12); 
    X46(k)=std(mag12);
    X47(k)=sum(mag12.^2)/50;
    X48(k)=rms(mag12);
   
     k=k+1;
end
%%
 train=[X1' X2' X3' X4';X5' X6' X7' X8';X13' X14' X15' X16';X21' X22' X23' X24';X17' X18' X19' X20';X9' X10' X11' X12'];
 
 sample=[X25' X26' X27' X28';X29' X30' X31' X32';X37' X38' X39' X40';X45' X46' X47' X48';X41' X42' X43' X44';X33' X34' X35' X36'];

 group=[1*ones(1,length(X2))';2*ones(1,length(X5))';3*ones(1,length(X14))';4*ones(1,length(X22))';5*ones(1,length(X20))';6*ones(1,length(X12))'];
 
 class = knnclassify(sample, train, group);
 
count11=0;count12=0;count13=0;count14=0;count15=0;count16=0;
count22=0;count21=0;count23=0;count24=0;count25=0;count26=0;
count33=0;count31=0;count32=0;count34=0;count35=0;count36=0;
count44=0;count41=0;count42=0;count43=0;count45=0;count46=0;
count55=0;count51=0;count52=0;count53=0;count54=0;count56=0;
count66=0;count61=0;count62=0;count63=0;count64=0;count65=0;

for i=1:length(X25)
     if(class(i)==1)
         count11=count11+1;
     end
     if(class(i)==2)
         count12=count12+1;
     end
     if(class(i)==3)
         count13=count13+1;
     end
     if(class(i)==4)
         count14=count14+1;
     end
     if(class(i)==5)
         count15=count15+1;
     end
     if(class(i)==6)
         count16=count16+1;
     end
end
 for i=length(X25):length(X25)+length(X29)
     if(class(i)==1)
         count21=count21+1;
     end
     if(class(i)==2)
         count22=count22+1;
     end
     if(class(i)==3)
         count23=count23+1;
     end
     if(class(i)==4)
         count24=count24+1;
     end
     if(class(i)==5)
         count25=count25+1;
     end
     if(class(i)==6)
         count26=count26+1;
     end
 end
 for i=length(X25)+length(X29):length(X25)+length(X29)+length(X37)
     if(class(i)==1)
         count31=count31+1;
     end
      if(class(i)==2)
         count32=count32+1;
      end
      if(class(i)==3)
         count33=count33+1;
      end
      if(class(i)==4)
         count34=count34+1;
      end
      if(class(i)==5)
         count35=count35+1;
      end
      if(class(i)==6)
         count36=count36+1;
      end
 end
 for i=length(X25)+length(X29)+length(X37):length(X25)+length(X29)+length(X37)+length(X45)
     if(class(i)==1)
         count41=count41+1;
     end
     if(class(i)==2)
         count42=count42+1;
     end
     if(class(i)==3)
         count43=count43+1;
     end
     if(class(i)==4)
         count44=count44+1;
     end
     if(class(i)==5)
         count45=count45+1;
     end
     if(class(i)==6)
         count46=count46+1;
     end
 end
for i=length(X25)+length(X29)+length(X37)+length(X45):length(X25)+length(X29)+length(X37)+length(X45)+length(X41)
     if(class(i)==1)
         count51=count51+1;
     end
      if(class(i)==2)
         count52=count52+1;
      end
      if(class(i)==3)
         count53=count53+1;
      end
      if(class(i)==4)
         count54=count54+1;
      end
      if(class(i)==5)
         count55=count55+1;
      end
      if(class(i)==6)
         count56=count56+1;
     end
 end
 for i=length(X25)+length(X29)+length(X37)+length(X45)+length(X41):length(X25)+length(X29)+length(X37)+length(X45)+length(X41)+length(X36)
     if(class(i)==1)
         count61=count61+1;
     end
      if(class(i)==2)
         count62=count62+1;
      end
      if(class(i)==3)
         count63=count63+1;
      end
      if(class(i)==4)
         count64=count64+1;
      end
      if(class(i)==5)
         count65=count65+1;
      end
      if(class(i)==6)
         count66=count66+1;
     end
 end
%%
 confusionmatrix=[count11 count12 count13 count14 count15 count16;count21 count22 count23 count24 count25 count26;count31 count32 count33 count34 count35 count36;count41 count42 count43 count44 count45 count46;count51 count52 count53 count54 count55 count56;count61 count62 count63 count64 count65 count66]
 %%
 accuracy1=((count11+count22+count33+count44+count55+count66)/(count11+count22+count33+count44+count55+count66+count12+count13+count14+count15+count16+count21+count31+count41+count51+count61))*100
 accuracy2=((count11+count22+count33+count44+count55+count66)/(count11+count22+count33+count44+count55+count66+count21+count23+count24+count25+count26+count12+count32+count42+count52+count62))*100
 accuracy3=((count11+count22+count33+count44+count55+count66)/(count11+count22+count33+count44+count55+count66+count31+count32+count34+count35+count36+count13+count23+count43+count53+count63))*100
 accuracy4=((count11+count22+count33+count44+count55+count66)/(count11+count22+count33+count44+count55+count66+count41+count42+count43+count45+count46+count14+count24+count34+count54+count64))*100
 accuracy5=((count11+count22+count33+count44+count55+count66)/(count11+count22+count33+count44+count55+count66+count51+count52+count53+count54+count56+count15+count25+count35+count45+count65))*100
 accuracy6=((count11+count22+count33+count44+count55+count66)/(count11+count22+count33+count44+count55+count66+count61+count62+count63+count64+count65+count16+count26+count36+count46+count56))*100
%%
sensitivity1=((count11)/(count11+count21+count31+count41+count51+count61))*100
sensitivity2=((count22)/(count22+count12+count32+count42+count52+count62))*100
sensitivity3=((count33)/(count33+count13+count23+count43+count53+count63))*100
sensitivity4=((count44)/(count44+count14+count24+count34+count54+count64))*100
sensitivity5=((count55)/(count55+count15+count25+count35+count45+count65))*100
sensitivity6=((count66)/(count66+count16+count26+count36+count46+count56))*100
%%
specificity1=((count22+count33+count44+count55+count66)/(count12+count13+count14+count15+count16+count22+count33+count44+count55+count66))*100
specificity2=((count11+count33+count44+count55+count66)/(count21+count23+count24+count25+count26+count11+count33+count44+count55+count66))*100
specificity3=((count11+count22+count44+count55+count66)/(count31+count32+count34+count35+count36+count11+count22+count44+count55+count66))*100
specificity4=((count11+count22+count33+count55+count66)/(count41+count42+count43+count45+count46+count11+count22+count33+count55+count66))*100
specificity5=((count11+count22+count33+count44+count66)/(count51+count52+count53+count54+count56+count11+count22+count33+count44+count66))*100
specificity6=((count11+count22+count33+count44+count55)/(count61+count62+count63+count64+count65+count11+count22+count33+count44+count55))*100

%%
accuracy=[accuracy1;accuracy2;accuracy3;accuracy4;accuracy5;accuracy6]
sensitivity=[sensitivity1;sensitivity2;sensitivity3;sensitivity4;sensitivity5;sensitivity6]
specificity=[specificity1;specificity2;specificity3;specificity4;specificity5;specificity6]
%%
Accuracy=(accuracy1+accuracy2+accuracy3+accuracy4+accuracy5+accuracy6)/6
sensitivity=(sensitivity1+sensitivity2+sensitivity3+sensitivity4+sensitivity5+sensitivity6)/6
specificity=(specificity1+specificity2+specificity3+specificity4+specificity5+specificity6)/6
