clear all
clc
figure(1)
clf
axis([0 100 0 100])
dx=[];
dy=[];
while 1
   [nx,ny,butt]=ginput(1); % Create an (xh,y) pair using the mouse input.
    dx=[dx;nx]; % Add the new x to the history of all x.
    dy=[dy;ny]; % "   "   "   y   "   "   "   "   "   y.
    d=[dx dy]; % Create a 2xN matrix with the whole history of (x,y) pairs.
    disp([nx ny]) % <-- Print (x,y) history to console.
    hold off
    plot(d(:,1),d(:,2),'ok') 
    axis([0 100 0 100])
    hold on
    N=length(dx);

    switch (N)
      case {0,1,2,3,4,5,6}
        disp('MOAR DOTS')
      otherwise,
        b0(1,:) = d(0+1,:);
        b1(1,:) = d(1+1,:);
        b2(1,:) = (1/2)*d(1+1,:)+(1/2)*d(2+1,:);
        b3(1,:) = (1/4)*d(1+1,:)+(7/12)*d(2+1,:)+(1/6)*d(3+1,:);
        
        b0(2,:) = (1/4)*d(1+1,:)+(7/12)*d(2+1,:)+(1/6)*d(3+1,:);
        b1(2,:) = (2/3)*d(2+1,:)+(1/3)*d(3+1,:);
        b2(2,:) = (1/3)*d(2+1,:)+(2/3)*d(3+1,:);
        b3(2,:) = (1/6)*d(2+1,:)+(4/6)*d(3+1,:)+(1/6)*d(4+1,:);
        
        b0(3:N-5,:) = (1/6)*d(2+1:N-5,:)+(4/6)*d(3+1:N-4,:)+(1/6)*d(4+1:N-3,:);
        b1(3:N-5,:) = (2/3)*d(3+1:N-4,:)+(1/3)*d(4+1:N-3,:);
        b2(3:N-5,:) = (1/3)*d(3+1:N-4,:)+(2/3)*d(4+1:N-3,:);
        b3(3:N-5,:) = (1/6)*d(3+1:N-4,:)+(4/6)*d(4+1:N-3,:)+(1/6)*d(5+1:N-2,:);
        
        b0(N-4,:) = (1/6)*d(N-4,:)+(4/6)*d(N-3,:)+(1/6)*d(N-2,:);
        b1(N-4,:) = (2/3)*d(N-3,:)+(1/3)*d(N-2,:);
        b2(N-4,:) = (1/3)*d(N-3,:)+(2/3)*d(N-2,:);
        b3(N-4,:) = (1/6)*d(N-3,:)+(7/12)*d(N-2,:)+(1/4)*d(N-1,:);
        
        b0(N-3,:) = (1/6)*d(N-3,:)+(7/12)*d(N-2,:)+(1/4)*d(N-1,:);
        b1(N-3,:) = (1/2)*d(N-2,:)+(1/2)*d(N-1,:);
        b2(N-3,:) = d(N-1,:);
        b3(N-3,:) = d(N,:);
        
        plot(b0(:,1),b0(:,2),'b.')
        plot(b1(:,1),b1(:,2),'r.')
        plot(b2(:,1),b2(:,2),'r.')
        plot(b3(:,1),b3(:,2),'bo')

n = 100;
interval = 1/n;
T = 0:interval:1; % n evenly spaced intervals between 0 and 1

% apply C function to all values in T

for j = 1:n-1
        new_column = b(B(1:end - j,j), B(2:end - j + 1, j), t);
        B(:, j+1) = [new_column; zeros(j, 1)];
    end
    point_on_curve = B(1, n);

plot(b0(:,1),b0(:,2),Bx, By)    
    end

end