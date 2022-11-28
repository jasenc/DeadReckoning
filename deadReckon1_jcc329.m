function deadReckon1_jcc329_AH(filename) %%NOTE HERE
% clear                               %% NOTE HERE
clc

% initializes the figure window
figure (1)
clf
axis([-5 5 -5 5]);

% prompts the user to select a starting position for the robot
disp('Select an initial start position for your robot.')
[xStart, yStart] = ginput(1);               % allows you to select a point in the figure window by clicking on it

% reads in the robot centric accelerations and angular velocities from
% input file
[xRAccel, yRAccel, zROmega] = textread('input_wk4.txt', '%f%f%f'); %% NOTE HERE
size(zROmega)

% initializes the integration time step and robot velocities and states
dt = 0.02;               % integration time step
v = 0;      % robots initial speed

% fixes the range of the axes on the figure
axis([-5 xStart+13 -5 yStart+13])
hold on

% the sensors give back the x and y acceleration plus the thetadot info.
% This means that the position data can be updated by integrating the
% accelerations and velocities accordingly

% robot's pose in the world coordinate frame
xW = xStart;
yW = yStart;
thetaW = 0;	
rob = makeRobot(xW, yW, thetaW);
for i = 1:length(xRAccel)
    thetaW = rob.theta + zROmega(i)*dt; % updates theta   
    v = v + xRAccel(i)*dt; % updates velocity
    xW = rob.x + v*cos(thetaW)*dt; % updates posistion of x
    yW = rob.y + v*sin(thetaW)*dt; % updates position of y
    % update robot's state and draw robot
    rob = moveRobot(rob, xW, yW, thetaW);
    pause(.001);
end
drawRobot(rob, 0.5, 'r')
