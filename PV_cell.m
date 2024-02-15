clear;clc;
syms V i
is =1e-6;%saturation current
ip=5;%photo generated current
Rs=0.01%series eesistance
Rsh=inf;%
Vt=0.025;%thermal voltage 
n=1.5%ideality factor

f(V,i)=ip-is*(exp((V+i*Rs)/(n*Vt))-1)-(V+i*Rs)/Rsh-i;
figure(1);
h=fimplicit(f,[0 0.7 0 6]);%plot equation volt and currant ranges
V=get(h,'Xdata');%get voltage from figure
i=get(h,'Ydata');%get current from figure
P=V.*i;
hold on;
plot(V,P );%get current verses powe
xlabel('V');
legend('current','Power');
Pm=max(P) %max power of pv cell
Isc=max(i )%short circuit current of pv cell
Voc=max(V )%open circuit voltage of pv cell
Im=i(P==Pm)%pv cell current of max power
Vm=V(P==Pm)%pv cell voltage of max power

