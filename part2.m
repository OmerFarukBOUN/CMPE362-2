% Wave summation example


% Amplitude
A = 0.5;
% Sample Rate (samples per second) 
sr = 5000000;
% Signal length (in seconds)
s = 2;
% Frequency (in Hz)
f = 100;
% Time axis
tt = 0:1 / sr:s;
data_points = [5, 15, 150, 500];

gibbs_error = [];
for n = data_points
    wave1 = 0;
    for k = 1:2:n
        wave1 = wave1 + sin(2*k*pi*f*tt) /k;
    end    
    wave1 = wave1 * ((4 * A) / pi);
    gibbs_error = [gibbs_error (max(wave1)-A)/(2*A)];
end
plot(data_points, gibbs_error)
