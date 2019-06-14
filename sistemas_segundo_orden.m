clear
close all
clc
%Sistema sobre amortiguado
e=2;
wn=2;
k=1;

a=tf(k*wn^2,[1 2*e*wn wn^2])

step(a)
grid on

%Sistema criticamente amortiguado
figure
e=1;
wn=4;
K=1;

a=tf(k*wn^2,[1 2*e*wn wn^2])

step(a)
grid on


%Sistema criticamente subamortiguado
figure
e=0.5;
wn=4;
K=1;

a=tf(k*wn^2,[1 2*e*wn wn^2])

step(a)
grid on




%Sistema marginalmente estable
figure
e=0;
wn=4;
K=1;

a=tf(k*wn^2,[1 2*e*wn wn^2])

step(a)
grid on
