%Codigo para probar ejercicio de algebra de bloques
close all
clear
clc

%Dinamicas de los bloques se consideran constantes
G1=1;
G2=2;
G3=3;
G4=4;
H1=5;
H2=6;

%Funcion de trasnferencia equivalente
numH=G1*G2*G3+G1*G4;
denH=1+H2*G2*G3+H1*G1*G2+G1*G2*G3+G1*G4+H2*G4;

% %Dinamicas de los bloques 
G1=tf(1,[1 1]);
G2=tf(1,[2 1]);
G3=tf(1,[3 1]);
G4=tf(1,[4 1]);
H1=tf(1,[5 1]);
H2=tf(1,[6 1]);

%Funcion de trasnferencia equivalente

H=(G1*G2*G3+G1*G4)/(1+H2*G2*G3+H1*G1*G2+G1*G2*G3+G1*G4+H2*G4);
numH=H.Numerator;
denH=H.Denominator;