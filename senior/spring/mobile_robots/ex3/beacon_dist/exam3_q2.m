function [x, y] = exam3_q2()
    points = [[0,0];[50,100];[100,0]];
    dists = zeros(3, 1);
    colors = ['r', 'g', 'b'];
    intersections = zeros(3,2);
    ref = [[0,3,2];[3,0,1];[2,1,0]];

    for i = 1:3
        p = points(i, :);
        dists(i) = get_dist(p(1), p(2));
    end

    figure
    axis([-50 200 -50 200]);
    hold on

    %draw circles
    theta = 0:pi/50:2*pi;
    px = 1*sin(theta);
    py = 1*cos(theta);

    for i = 1:3
        p = points(i, :);
        d = dists(i);
        px1 = px * d + p(1);
        py1 = py * d + p(2);

        px1(end+1) = px1(1);
        py1(end+1) = py1(1);

        plot(px1, py1, colors(i));
        plot(p(1), p(2), horzcat(colors(i), '.'));
    end

    for i = 1:2
        for j = i+1:3
            p0 = points(i, :);
            p1 = points(j, :);
            r0 = dists(i);
            r1 = dists(j);
            refN = ref(i, j);
            refP = points(refN, :);
            refD = dists(refN);
            d = sqrt((p0(1) - p1(1))^2 + (p0(2) - p1(2))^2);

            a = (r0^2 - r1^2 + d^2)/(2*d);
            p2 = zeros(2,1);
            p2(1) = p0(1) + a * (p1(1) - p0(1))/d;
            p2(2) = p0(2) + a * (p1(2) - p0(2))/d;

            if d > (r0 + r1)
                x1 = p2(1);
                y1 = p2(2);

                x2 = p2(1);
                y2 = p2(2);
            else
                h = sqrt(r0^2 - a^2);

                x1 = p2(1) + h * (p1(2) - p0(2))/d;
                y1 = p2(2) - h * (p1(1) - p0(1))/d;

                x2 = p2(1) - h * (p1(2) - p0(2))/d;
                y2 = p2(2) + h * (p1(1) - p0(1))/d;

            end

            dist1 = sqrt((x1 - refP(1))^2 + (y1 - refP(2))^2);
            err1 = abs(refD - dist1)/refD;

            dist2 = sqrt((x2 - refP(1))^2 + (y2 - refP(2))^2);
            err2 = abs(refD - dist2)/refD;

            if err1 < err2
                intersections(i + (j - 2), :) = [x1, y1];
            else
                intersections(i + (j - 2), :) = [x2, y2];
            end
        end
    end

    avgP = [mean(intersections(:, 1)), mean(intersections(:, 2))];
    plot(avgP(1), avgP(2), 'k*');

    x = avgP(1);
    y = avgP(2);
