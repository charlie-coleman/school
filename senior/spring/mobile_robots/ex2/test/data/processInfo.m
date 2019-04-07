degfiles = ["0deg", "15deg", "30deg", "45deg", "60deg"];
distfiles = ["10", "14", "18", "22", "26", "30"];
lFiles = length(distfiles);

degs = zeros(1, lFiles);
values = zeros(lFiles, 400);
means = zeros(1, lFiles);
stddevs = zeros(1, lFiles);
sens = zeros(1, lFiles);
resol = zeros(1, lFiles);
for i = 1:lFiles
    fId = fopen(distfiles(i) + ".txt", 'r');

    formatSpec = "%d\t%d";
    sizeA = [2 Inf];

    A = fscanf(fId, formatSpec, sizeA);

    degs(i) = A(1,1);
    values(i, :) = A(2,1:400);
    means(i) = mean(values(i,:));
    
%     stddevs(i) = std(values(i,:));
%     sens(i) = ((means(i)/1024)*5)/(20/cosd(degs(i)));
%     resol(i) = (20/cosd(degs(i)))/(means(i));
end

plot(degs, means);

