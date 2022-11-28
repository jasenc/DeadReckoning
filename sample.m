% Sample program using makeRobot and moveRobot function.

dt = 0.1;
v = 5;
omega = 5;
figure (1)
axis([-5 5 -5 5]);
clf
hold on

rob = makeRobot(0, 0, 0);
for i = 1:10
    theta = rob.theta + omega*dt
    x = rob.x + v*cos(theta)*dt
    y = rob.y + v*sin(theta)*dt
    
    rob = moveRobot(rob, x, y, theta);
    % uncomment this if you want to see an animation
    pause(0.01);
end
drawRobot(rob, 0.5, 'r')