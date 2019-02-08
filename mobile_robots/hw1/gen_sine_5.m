% Author: Charlie Coleman
%   Date: 2019-1-22
% Course: Mobile Robotics
function [y, x] = gen_sine(freq, cycles, samples)
    cycles = 10;
    samples = 5;
    x = 0:1/(samples*freq):cycles/freq;
    y = sin(2*pi*freq*x);
end
