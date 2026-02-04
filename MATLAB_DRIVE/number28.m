t=0:0.01:10;
vs=3.*exp(-t./3).*sin(pi.*t);
vl1=zeros(size(t));% ideal diode
vl2=vl1;%offset diode model
for n=1:length(t)
if vs(n)>0
vl1(n)=vs(n);% ideal diode
end
if vs(n)>0.6
vl2(n)=vs(n)-0.6;% offset model diode
end
end
plot(t,vs,t,vl1,t,vl2);
xlabel('t');
legend('v_{s}(t)','v_{L}(t) for ideal diode','v_{L}(t) for offset model diode');