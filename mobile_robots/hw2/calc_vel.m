function [direction, speed] = calc_vel(direction, speed, coor_1, coor_2)
    line_angle = atand((coor_2(2)-coor_1(2))/(coor_2(1)-coor_1(1)));
    line_angle = mod((line_angle + 360.0), 360.0);
    rel_angle = 180-direction-(180-line_angle);
    direction = mod((line_angle + rel_angle)+360,360);
    speed = speed;