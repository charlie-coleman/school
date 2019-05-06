function [x, y] = plot_polar_line_segment(alpha, rho, theta1, r1, theta2, r2)
%function [x1, y1, x2, y2] = plot_polar_line_segment(alpha, rho, theta1, r1, theta2, r2)
%function [x1, y1, x2, y2] = plot_polar_line_segment(alpha, rho, theta1, r1, theta2, r2)

%find y = mx + b form of line
%m = rise / run <=> alpha = atan(-run/rise)
%m = -1/tan(alpha)
%y = -1/tan(alpha) * x + b
%x1 = rho*cos(alpha)
%y1 = rho*sin(alpha)
%y1 = -1/tan(alpha) * x1 + b
%b = y1 - (-1/tan(alpha) * x1) = y1 + 1/tan(alpha) * x1


%m = -1/tan(alpha)
%b = rho*sin(alpha) + rho*cos(alpha)/tan(alpha)

m = -1/tan(alpha);
b = rho*sin(alpha) + rho*cos(alpha)/tan(alpha);


%find point1 in x,y coordinates
px1 = r1*cos(theta1);
py1 = r1*sin(theta1);

%find point2 in x,y coordinates
px2 = r2*cos(theta2);
py2 = r2*sin(theta2);

%use a central limit theorm to find a best p1, p2
%test for horizontal and vertical cases
if abs(m) < 1e-4 % horizontal line
    x1_p = px1;
    x2_p = px2;
else
    x1_p = (py1 - b) / m;
    x2_p = (py2 - b) / m;
end

if abs(m) > 4e3 % verticle line
    y1_p = py1;
    y2_p = py2;
else
    y1_p = m * px1 + b;
    y2_p = m * px2 + b;
end

x(1) = (px1+x1_p) / 2;
y(1) = (py1+y1_p) / 2;

x(2) = (px2+x2_p) / 2;
y(2) = (py2+y2_p) / 2;

%keyboard
