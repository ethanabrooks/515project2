clear X map
load('durer','X')
Xdurer = X(1:512,:);
Xdurer(:,510:512) = 50;
figure
colormap(gray)
imagesc(Xdurer)
