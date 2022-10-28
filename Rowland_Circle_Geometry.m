% Bragg angle geometry calculations
clc

larray = 100;
ymax = 1000;
d = 75; % d-spacing for crystal orientation/type used
D = 1000; % Rowland Circle Diameter
ba = linspace(74,88,larray); % Bragg Angle
ba = ba.*pi./180; % Degrees to Radians
dAx = 1000.*sin(ba); % Analyzer (Crystal) Horizontal Offset
dAy = dAx.*cos(ba); % Analyzer (Crystal) Vertical Offset
dDy = ymax-2.*dAy; % Detector Vertical Offset
dAy = ymax-dAy-dDy(1);
dDx = linspace(0,0,100);
ba = ba./pi*180; % Radians to Degrees
dDy = dDy-dDy(1);

plot(dAx,dAy,'color','k')
hold on
msize = 12;
plot(dAx(1),dAy(1),'.-','color','k','MarkerSize',msize)
plot(dAx(larray),dAy(larray),'.-','color','k','MarkerSize',msize)
xlim([-100 1100])
ylim([dDy(1) dAy(100)+50])
plot(dDx,dDy,'color','k')
plot(dDx(1),dDy(1),'.-','color','k','MarkerSize',msize)
plot(dDx(larray),dDy(larray),'.-','color','k','MarkerSize',msize)
hold off