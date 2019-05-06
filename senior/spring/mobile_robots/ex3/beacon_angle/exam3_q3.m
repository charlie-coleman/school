function [x, y] = exam3_q3()

    points = [[0,0]; [0, 100]; [100, 100]; [100, 0]];
    angles = zeros(4, 1);
    mvals = zeros(4, 1);
    bvals = zeros(4, 1);

    intersections = zeros(4, 2);

    figure
    axis([-25 125 -25 125]);
    hold on

    for i = 1:length(points)
        p0 = points(i, :);
        angles(i) = get_angle(p0(1), p0(2), 0);
        a = angles(i);
        p1 = p0 + [10*cos(a), 10*sin(a)];

        m = (p1(2) - p0(2))/(p1(1) - p0(1));
        b = p1(2)-m*p1(1);
        xs = 0:0.1:100;
        ys = m*xs+b;

        mvals(i) = m;
        bvals(i) = b;

        plot(xs(ys < 125 & ys > -25), ys(ys < 125 & ys > -25));
        plot(p0(1), p0(2), 'x');
    end

    for i = 1:length(points)
        p0 = points(i, :);
        a = angles(i);
        refN = mod(i + 1, 4);
        if refN == 0
            refN = 4;
        end

        m1 = mvals(i);
        m2 = mvals(refN);
        b1 = bvals(i);
        b2 = bvals(refN);

        x1 = -(b1 - b2)/(m1 - m2);
        y1 = m1 * x1 + b1;

        plot(x1, y1, 'k.');
        intersections(i, :) = [x1, y1];
    end

    x = mean(intersections(:, 1));
    y = mean(intersections(:, 2));

    plot(x, y, 'r.');
