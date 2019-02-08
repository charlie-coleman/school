function hw2(wall_points)
    r = 5;
    dir = 360*rand(1);
    speed = 10*rand(1);
    theta = 0:pi/20:2*pi;
    circle_x = r * cos(theta);
    circle_y = r * sin(theta);
    x_offset = 0;
    y_offset = 0;
    fig = figure('Name', 'Homework 2');
    circ = plot(circle_x, circle_y, 'r'); hold on;
    bounds = plot(wall_points(:,1), wall_points(:,2)); hold on;
    drawnow;
    xlim([-40, 40]);
    ylim([-40, 40]);
    while(1)
        col = 0;
        for i = 1:length(wall_points(:,1))-1
            col = collision([x_offset, y_offset], r, [wall_points(i,1), wall_points(i,2)], [wall_points(i+1,1), wall_points(i+1,2)]);
            if col
                [dir, speed] = calc_vel(dir, speed, [wall_points(i,1), wall_points(i,2)], [wall_points(i+1,1), wall_points(i+1,2)]);
                while col == 1
                    x_offset = x_offset + cosd(dir)*speed*0.0166667;
                    y_offset = y_offset + sind(dir)*speed*0.0166667;
                    col = collision([x_offset, y_offset], r, [wall_points(i,1), wall_points(i,2)], [wall_points(i+1,1), wall_points(i+1,2)]);
                end
            end
        end
        x_offset = x_offset + cosd(dir)*speed*0.0166667;
        y_offset = y_offset + sind(dir)*speed*0.0166667;
        delete(circ);
        circ = plot(circle_x + x_offset, circle_y + y_offset, 'r'); hold on;
        drawnow;
        refresh;
        pause(0.0166667);
    end