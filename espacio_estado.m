clear
close all
clc

k=1;
m=1;
b=1;

A=[0 1; -k/m -b/m];
B=[0; 1/m];
C=[1 0];
D=[];

sys=ss(A,B,C,D);
step(sys)

sys2=tf(1,[m b k]);
hold on
step(sys,'*k')
