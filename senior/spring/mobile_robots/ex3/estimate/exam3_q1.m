close all
clear all

load estimate_set3.mat
%load estimate_set2.mat
%load estimate_set3.mat

theta = dist(:,1);
rho = dist(:,2);

var = (rho.^2)./(10^3);
w = 1./var;

points = [rho.*cos(theta), rho.*sin(theta)];
bounds = [min(points(:, 1)) - 20, max(points(:, 1)) + 20, min(points(:, 2)) - 20, max(points(:, 2)) + 20];

p1 = subplot(1,3,1);
plot(rho.*cos(theta),rho.*sin(theta), '.');
hold on;
title(p1, 'Input Points');
axis(bounds);

p2 = subplot(1,3,2);
title(p2, 'Alpha + R Split/Merge');
hold on

mid = floor( length(points) / 2 );
e = length(points);

maxErr = 16;

[ms1, bs1] = arSAM(w(1:mid), rho(1:mid), theta(1:mid), points(1:mid, :), maxErr);
[ms2, bs2] = arSAM(w(mid:end), rho(mid:end), theta(mid:end), points(mid:end, :), maxErr);
axis(bounds)

p3 = subplot(1,3,3);
title(p3, 'Interative-End-Point-Fit');
hold on

[ms3, bs3] = SAM(w, rho, theta, points, maxErr);

axis(bounds);

function [ms, bs] = arSAM(w, rho, theta, points, maxDist)
    [alpha, r] = calcAlphaR(w, rho, theta);
    [m, b] = calcSlopeIntercept(alpha, r);
    ds = distToLine(points, m, b);
    foundBreak = 0;
    [val, index] = max(ds);
    while not(foundBreak) && index <= length(ds)
        if (index >= length(ds)) || (val < maxDist) || (ds(index+1) > maxDist)
            foundBreak = 1;
        else
            ds(index) = 0;
        end
        [val, index] = max(ds);
    end
    
    if index <= 10 || length(w(index:end)) <= 10 
        middle = ceil(length(w)/2);
        w = circshift(w, middle - index);
        rho = circshift(rho, middle - index);
        theta = circshift(theta, middle - index);
        points = circshift(points, middle - index);
        index = middle;
    end
    
    minPoints = 10;
    if val > maxDist && length(w(1:index)) > minPoints && length(w(index:end)) > minPoints 
        [m1, b1] = arSAM(    w(1:index),     rho(1:index),     theta(1:index),     points(1:index, :), maxDist);
        [m2, b2] = arSAM(w(index+1:end), rho(index+1:end), theta(index+1:end), points(index+1:end, :), maxDist);
        
        ms = horzcat(m1, m2);
        bs = horzcat(b1, b2);
    else
        ms = m;
        bs = b;
        x = -400:0.1:400;
        y = m * x + b;
        xmax = max(points(:, 1));
        xmin = min(points(:, 1));
        ymax = max(points(:, 2));
        ymin = min(points(:, 2));
        if xmax-xmin > ymax-ymin
            plot(x(x < xmax & x > xmin), y(x < xmax & x > xmin), 'r', 'LineWidth', 2);
        else
            plot(x(y < ymax & y > ymin), y(y < ymax & y > ymin), 'r', 'LineWidth', 2);
        end
    end
end

function [ms, bs] = SAM(w, rho, theta, points, maxDist)
    m = ( points(1, 2) - points(end, 2) ) / ( points(1, 1) - points(end, 1) );
    if isnan(m)
        m = 10000;
    end
    b = points(1, 2) - m * points(1, 1);
    ds = distToLine(points, m, b);
    [val, index] = max(ds);
    
    if val > maxDist && length(w) > 25
        [m1, b1] = SAM(    w(1:index),     rho(1:index),     theta(1:index),     points(1:index, :), maxDist);
        [m2, b2] = SAM(w(index+1:end), rho(index+1:end), theta(index+1:end), points(index+1:end, :), maxDist);
        ms = horzcat(m1, m2);
        bs = horzcat(b1, b2);
    else
        ms = m;
        bs = b;
        x = -400:0.1:400;
        y = m * x + b;
        xmax = max(points(:, 1));
        xmin = min(points(:, 1));
        ymax = max(points(:, 2));
        ymin = min(points(:, 2));
        if xmax-xmin > ymax-ymin
            plot(x(x < xmax & x > xmin), y(x < xmax & x > xmin), 'r', 'LineWidth', 3);
        else
            plot(x(y < ymax & y > ymin), y(y < ymax & y > ymin), 'r', 'LineWidth', 3);
        end
    end
end

function [alpha, r] = calcAlphaR(w, rho, theta)
    sum2 = 0;
    sum4 = 0;

    sum1 = sum(w .* (rho.^2) .* sin(2*theta));
    sum3 = sum(w .* (rho.^2) .* cos(2*theta));
    sumW = sum(w);
    for i = 1:length(w)
        for j = 1:length(w)
            sum2 = sum2 + ( w(i) * w(j) * rho(i) * rho(j) * cos( theta(i) ) * sin( theta(j) ) );
            sum4 = sum4 + ( w(i) * w(j) * rho(i) * rho(j) * cos( theta(i) + theta(j) ) );
        end
    end

    % sum1 = SUM w_i p_i^2 sin(2 theta_i)
    % sum2 = SUM SUM w_i w_j p_i p_j cos(theta_i) sin(theta_j)
    % sum3 = SUM w_i p_i^2 cos(2 theta_i)
    % sum4 = SUM SUM w_i w_j p_i p_j cos(theta_i + theta_j)
    % alpha = 1/2 * atan( (sum1 - 2/(sum w) * sum2) / (sum3 - 1/(sum w) * sum4)

    alpha = 1/2 * atan2( (sum1 - (2/sumW * sum2)), (sum3 - (1/sumW * sum4))) + pi/2;

    % sum5 = SUM w_i p_i cos( theta_i - alpha)

    sum5 = sum(w .* rho .* cos(theta - alpha));
    r = sum5 / sumW;
end

function [m, b] = calcSlopeIntercept(alpha, r)
    p1 = [r * cos(alpha), r * sin(alpha)];
    p2 = p1 + [10 * cos(alpha + pi/2), 10 * sin(alpha + pi/2)];

    m = (p2(2) - p1(2))/(p2(1) - p1(1));
    b = p2(2) - (m * p2(1)); 
end

function d = distToLine(p, m, b)
    % d = max( abs((m*p(:, 1)+b) - p(:, 2)), abs((p(:, 2) - b)/m - p(:, 1)));
    d = abs( -m * p(:, 1) + p(:, 2) - b) / sqrt(m^2 + 1);
end

function d = distBetweenPoints(p1, p2)
    d = sqrt( (p1(2) - p2(2))^2 + (p1(1) - p2(2))^2 );
end

function md = mahalanobis(a, r, theta, p)
    md = (a - theta(:)).^2 + (r - p(:)).^2;
end