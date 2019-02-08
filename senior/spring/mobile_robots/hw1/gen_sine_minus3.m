% Author: Charlie Coleman
%   Date: 2019-1-22
% Course: Mobile Robotics
function [y, x] = gen_sine(freq)
    cycles = 10;
    if ((cycles/freq - 3) < 0)
        cycles = 3*freq + 2;
    end
    samples = 25;
    x = 0:1/(samples*freq):cycles/freq;
    y = sin(2*pi*freq*(x+3));
end
