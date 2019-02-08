% Author: Charlie Coleman
%   Date: 2019-1-22
% Course: Mobile Robotics

rand_nums = rand(1, 20);
disp('5. ');
for i = 0:3
   s = sprintf('\t%f %f %f %f %f', rand_nums(5*i+1:5*(i+1)));
   disp(s);
end
