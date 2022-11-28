linefit = [0.0 1.1;
    0.5 1.6;
    1.1 2.4;
    1.7 3.8;
    2.1 4.3;
    2.5 4.7;
    2.9 4.8;
    3.3 5.5;
    3.7 6.1;
    4.2 6.3;
    4.9 7.1;
    5.3 7.1;
    6.0 8.2;
    6.7 6.9;
    7.0 5.3]
x = linefit(:,1);
y = linefit(:,2);
figure(1), plot(x,y,'O:')
pcoeff=polyfit(x,y,1);
xp=0:0.1:7;
yp=polyval(pcoeff,xp);
figure(2), plot(x,y,'O',xp,yp,'m')
pcoeff2=polyfit(x,y,2);
yp2=polyval(pcoeff2,xp);
figure(3), plot(x,y,'O',xp,yp2,'m')