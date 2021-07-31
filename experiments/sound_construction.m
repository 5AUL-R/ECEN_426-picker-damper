%%% Signal Construction
% Designed to take raw voltage waveforms from pickup and re-create how it
% will sound after going through the pre-amplifier, mixer box

% 2500 samples between -0.03 and 0.03 (Delta 0.06) seconds
% Sample rate is therefore 4166.666... Hz
f_s = 4166;

clear
clc

[~,~,~,v0,t0] = readvars('F0000CH4.CSV')
[~,~,~,v1,t1] = readvars('F0001CH4.CSV')
[~,~,~,v2,t2] = readvars('F0002CH4.CSV')
[~,~,~,v3,t3] = readvars('F0003CH4.CSV')
[~,~,~,v4,t4] = readvars('F0004CH4.CSV')

plot(v0,t0)
figure()
plot(v1,t1)
figure()
plot(v2,t2)
figure()
plot(v3,t3)
figure()
plot(v4,t4)



Vx = vertcat(v0,v0)
Vx = vertcat(Vx,Vx)
Vx = vertcat(Vx,Vx)
Vx = vertcat(Vx,Vx)
Vx = Vx*10000 % Output from transducor into pre-amp

%audiowrite('sigX.wav',Vx,4166)



