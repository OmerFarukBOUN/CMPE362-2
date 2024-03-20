
% Amplitude
A = 0.5;
% Sample Rate (samples per second) 
sr = 100000;
% Signal length (in seconds)
s = 2;
% Frequency (in Hz)
f = 100;
% Time axis
tt = 0:1 / sr:s;


tiledlayout(4,1)

for n = [5, 15, 150, 500]
    nexttile
    wave1 = 0;
    for k = 1:2:n
        wave1 = wave1 + sin(2*k*pi*f*tt) /k;
    end    
    wave1 = wave1 * ((4 * A) / pi);
    plot(tt, wave1)
    axis([0 0.0200 -1 1]);
    title(['n=', num2str(n)])
end
