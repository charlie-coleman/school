function alpha = calcAlpha(arr)
    rho = arr(:, 2);
    theta = arr(:, 1) .* pi ./180;

    var = (rho.^2)./(10^3);
    w = 1./var^2;
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    sum4 = 0;
    sumw = 0;
    for i = 1:length(arr)
        sum1 = sum1 + (w(i) * rho(i)^2 * sin(2 * theta(i)));
        sum3 = sum3 + (w(i) * rho(i)^2 * cos(2 * theta(i)));
        sumw = sumw + w(i);
        for j = i+1:length(arr)
            sum2 = sum2 + (w(i) * w(j) * rho(i) * rho(j) * cos(theta(i)) * sin(theta(j)));
            sum4 = sum4 + (w(i) * w(j) * rho(i) * rho(j) * cos(theta(i) + theta(j)));
        end
    end

    alpha = 1/2 * atan( (sum1 - 2/sumw * sum2) / (sum3 - 1/sumw * sum4));