%--------------------------------------------------------------------------
% Created: 3/6/2017 by Charlie Coleman, Michael Eagleton
% 
% Revision History: None
% 
% Purpose: Determine the distance measured by an IR sensor, takes a list of
% sensor values and returns estimated distances
% 
% Variables: 
%   N - Number of trials
%   step - step size between distances
%   means - mean error for N trials at each distance
%   variance - error variance for N trials at each distance
% 
%--------------------------------------------------------------------------
N = 200000;
step = 0.01;
range = 5+step:step:30;
values = zeros(N,length(range)); 
sampleAvg = zeros(length(range), 1);
means = zeros(length(range),1);
variance = zeros(length(range), 1);

for i = 1:N
    samples = probeIR(3, range);
    sampleAvg = sampleAvg + samples.';
    d = IRdist(samples);
    values(i, :) = d;
end
sampleAvg = sampleAvg ./ N;
for i = 1:length(range)
    arr = zeros(N, 1);
    arr(:) = range(i);
    means(i) = mean(abs(values(:, i)-range(i))./range(i))*100;
    variance(i) = var(abs(values(:, i)-range(i))./range(i))*100;
end

figure
subplot(3,1,1);
plot(range, sampleAvg)
title('True Distance v. Sensor Value')
xlabel('True Distance (in.)')
ylabel('Sensor value')

subplot(3,1,2)
plot(range, means)
title('Mean of Dest')
xlabel('True Distance (in.)')
ylabel('Error mean (%)')

subplot(3,1,3)
plot(range, variance)
title('Variance of Dest')
xlabel('True Distance (in.)')
ylabel('Error variance (%)')