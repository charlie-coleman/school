function [contact] = collision(ball, radius, coor_1, coor_2)
    contact = 0;
    m = (coor_1(2)-coor_2(2))/(coor_1(1)-coor_2(1));
    b = (-m*coor_1(1))+coor_1(2);
    if abs(m) ~= Inf
        d = abs(-m*ball(1) + ball(2) - b)/sqrt(m^2 + 1);
    else
        d = abs(ball(1) - coor_1(1));
    end
    if (d <= radius)
        contact = 1;
    end