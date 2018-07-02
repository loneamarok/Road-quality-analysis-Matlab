function [x,lat,lon]=second(m)
%m=mobiledev;
%m.AccelerationSensorEnabled=1;
%m.PositionSensorEnabled=1;
%pause(1)
%m.logging=1;
%pause(1);
%m.logging=0;
pause(1);
[a, t] = accellog(m);
[lat,lon, t1] = poslog(m);
discardlogs(m);
%[lat,lon]
%a
x=std(abs(9.8-a(:,3)));
%latf=mean(lat);
%lonf=mean(lon);
end