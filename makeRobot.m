% Function to create a robot in an active figure window
function robot = makeRobot(x, y, theta)

robot = struct('x', x, 'y', y, 'theta', theta, 'fhandle', []);

robot.fhandle = drawRobot(robot, 0.5, 'g');