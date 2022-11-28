% this function draws a robot in the current figure

function rhandle = drawRobot(robot, scale, color)

tip_i = scale*[1; 0];
center1_i = scale*[0.5; 0.5];
center2_i = scale*[0.5; -0.5];
tail1_i = scale*[0; 0.5];
tail2_i = scale*[0; -0.5];

Rot = [cos(robot.theta), -sin(robot.theta); 
    sin(robot.theta), cos(robot.theta)];

tip_f = Rot*tip_i + [robot.x; robot.y];
center1_f = Rot*center1_i + [robot.x; robot.y];
center2_f = Rot*center2_i + [robot.x; robot.y];
tail1_f = Rot*tail1_i + [robot.x; robot.y];
tail2_f = Rot*tail2_i + [robot.x; robot.y];

fpos = [tip_f'; center1_f'; tail1_f'; tail2_f'; center2_f'];

rhandle = patch(fpos(:,1), fpos(:,2), color);
