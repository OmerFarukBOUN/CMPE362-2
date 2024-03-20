% Amplitude
A = 0.5;
% Signal length (in seconds)
s = 2;
% Frequency (in Hz)
f = 100;


for n = [5, 15, 150, 500]
    if rem(n, 2) == 1
        biggest_odd = n;
    else
        biggest_odd = n - 1;
    end
    wave1 = 0;
    sr = 2*f*n;
    tt = 0:1 / sr:s;
    for k = 1:2:n
        wave1 = wave1 + sin(2*k*pi*f*tt) /k;
    end    
    wave1 = wave1 * ((4 * A) / pi);
    audiowrite(['n=', num2str(n), '.wav'], wave1, sr);
end
