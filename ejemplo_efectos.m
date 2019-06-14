clear
close all
clc
k=1;
tao=4;
spo=tf(k,[tao 1]);
%Sistema sobre amortiguado
e=2;
wn=2;
k=1;
sso1=tf(k*wn^2,[1 2*e*wn wn^2]); 
%Sistema criticamente amortiguado
e=1;
wn=2;
k=1;
sso2=tf(k*wn^2,[1 2*e*wn wn^2]); 
%Sistema sub amortiguado
e=0.4;
wn=2;
k=1;
sso3=tf(k*wn^2,[1 2*e*wn wn^2]); 
%Normal
step(spo)
hold on
%Efecto de retardo
delay=1.1:0.5:5;
for i=1:length(delay)
    spod=tf(k,[tao 1],'InputDelay',delay(i));
    step(spod)
end
legend('original','delay=1.1','delay=1.6','delay=2.1','delay=2.6,delay=3.1','delay=3.6','delay=4.1','delay=4.6')
title('Respuesta al escalón SPO con retardo')
grid on 
%Efecto de cero adicional
figure
taoc=-2:2;
step(spo)
hold on
for i=1:length(taoc)
    if (taoc(i)~=0)
        spoc=tf([taoc(i) 1],1);
        step(spo*spoc)
    end
end
legend('original','taoc=-2','taoc=-1','taoc=1','taoc=2')
title('Respuesta al escalón SPO con cero adicional')
grid on 
%Efecto de polo adicional
figure
taop=1.1:2:10;
step(spo)
hold on
for i=1:length(taop)
    spop=tf(1,[taop(i) 1]);
    step(spo*spop)
end
spop=tf(1,[tao/10 1]);
step(spo*spop)
legend('original','taop=1.1','taop=3.1','taop=5.1','taop=7.1','taop=9.1','Polo adicional ')
title('Respuesta al escalón SPO con polo adicional')
grid on 

%Normal
figure
step(sso1)
hold on
%Efecto de retardo
delay=1.1:0.5:5;
for i=1:length(delay)
    spod=tf(sso1.Numerator{1},sso1.Denominator{1},'InputDelay',delay(i));
    step(spod)
end
legend('original','delay=1.1','delay=1.6','delay=2.1','delay=2.6,delay=3.1','delay=3.6','delay=4.1','delay=4.6')
title('Respuesta al escalón SSO1 con retardo')
grid on 
%Efecto de cero adicional
figure
taoc=-2:2;
step(sso1)
hold on
for i=1:length(taoc)
    if (taoc(i)~=0)
        spoc=tf([taoc(i) 1],1);
        step(sso1*spoc)
    end
end
legend('original','taoc=-2','taoc=-1','taoc=1','taoc=2')
title('Respuesta al escalón SSO1 con cero adicional')
grid on 
%Efecto de polo adicional
figure
taop=1.1:2:10;
step(sso1)
hold on
for i=1:length(taop)
    spop=tf(1,[taop(i) 1]);
    step(sso1*spop)
end
[p z]=pzmap(sso1);
pd=abs(max(p));
spop=tf(1,[pd/10 1]);
step(sso1*spop)
legend('original','taop=1.1','taop=3.1','taop=5.1','taop=7.1','taop=9.1','Polo adicional ')
title('Respuesta al escalón SSO1 con polo adicional')
grid on 

%Normal
figure
step(sso2)
hold on
%Efecto de retardo
delay=1.1:0.5:5;
for i=1:length(delay)
    spod=tf(sso2.Numerator{1},sso2.Denominator{1},'InputDelay',delay(i));
    step(spod)
end
legend('original','delay=1.1','delay=1.6','delay=2.1','delay=2.6,delay=3.1','delay=3.6','delay=4.1','delay=4.6')
title('Respuesta al escalón SSO2 con retardo')
grid on 
%Efecto de cero adicional
figure
taoc=-2:2;
step(sso2)
hold on
for i=1:length(taoc)
    if (taoc(i)~=0)
        spoc=tf([taoc(i) 1],1);
        step(sso2*spoc)
    end
end
legend('original','taoc=-2','taoc=-1','taoc=1','taoc=2')
title('Respuesta al escalón SSO2 con cero adicional')
grid on 
%Efecto de polo adicional
figure
taop=1.1:2:10;
step(sso2)
hold on
for i=1:length(taop)
    spop=tf(1,[taop(i) 1]);
    step(sso2*spop)
end
[p z]=pzmap(sso2);
pd=abs(max(p));
spop=tf(1,[pd/10 1]);
step(sso2*spop)
legend('original','taop=1.1','taop=3.1','taop=5.1','taop=7.1','taop=9.1','Polo adicional ')
title('Respuesta al escalón SSO2 con polo adicional')
grid on 

%Normal
figure
step(sso3)
hold on
%Efecto de retardo
delay=1.1:0.5:5;
for i=1:length(delay)
    spod=tf(sso3.Numerator{1},sso3.Denominator{1},'InputDelay',delay(i));
    step(spod)
end
legend('original','delay=1.1','delay=1.6','delay=2.1','delay=2.6,delay=3.1','delay=3.6','delay=4.1','delay=4.6')
title('Respuesta al escalón SSO3 con retardo')
grid on 
%Efecto de cero adicional
figure
taoc=-2:2;
step(sso3)
hold on
for i=1:length(taoc)
    if (taoc(i)~=0)
        spoc=tf([taoc(i) 1],1);
        step(sso3*spoc)
    end
end
legend('original','taoc=-2','taoc=-1','taoc=1','taoc=2')
title('Respuesta al escalón SSO3 con cero adicional')
grid on 
%Efecto de polo adicional
figure
taop=1.1:2:10;
step(sso3)
hold on
for i=1:length(taop)
    spop=tf(1,[taop(i) 1]);
    step(sso3*spop)
end
[p z]=pzmap(sso3);
pd=abs(max(real(p)));
spop=tf(1,[pd/10 1]);
step(sso3*spop)
legend('original','taop=1.1','taop=3.1','taop=5.1','taop=7.1','taop=9.1','Polo adicional ')
title('Respuesta al escalón SSO3 con polo adicional')
grid on 

