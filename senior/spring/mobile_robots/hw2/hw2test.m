close all
clear all

phi = (0:360/20:360)*2*pi/360;
r = 40;
corners(:,1) = r*sin(phi);
corners(:,2) = r*cos(phi);
corners(:,3) = 1:length(phi);

rand('seed',sum(clock*100));
n_sides = round(rand(1,1)*8)+4;

point = 0;
for i=1:n_sides
    count = round(rand(1,1)*(length(corners(:,3))-1))+1;
    points(i,:) = corners(count,:);
    corners = corners((corners(:,3) ~= points(i,3)), :);
end

points = sortrows(points,3);
points = [points(:,:); points(1,:)];

hw2(points(:,1:2));