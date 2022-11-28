% Function used to redraw a robot original at robot.x, robot.y, and
% robot.theta in an active figure window to the new position x, y, and
% theta
function robot = moveRobot(robot, x, y, theta)

plot([x robot.x], [y robot.y], 'k')
robot.x = x;
robot.y = y;
robot.theta = theta;
