 function [p,geocolor]=ssmap1()

i=2;
lat=0;
lon=0;
wm = webmap('Open Street Map');
color=(hot(5));
geocolor=color(5,:);

p=geopoint(lat,lon);


            
m=mobiledev;
m.AccelerationSensorEnabled=1;
m.PositionSensorEnabled=1;
m.logging=1;



%wmzoom(16);
while(i<100)
    [stdev,lat,lon]=second(m);
    
    
    
     if(not(size(lat)==[0,0]) & not(size(lon) == [0,0]))%|( not(lat==p(i-1).Latitude)& not(lat==p(i-1).Latitude)))
        p=cat(1,p,geopoint(lat,lon));
        lat
    lon
    stdev
    if (stdev<=0.1)
                geocolor(i,:)=color(5,:);
                else if(stdev<=0.5)
                geocolor(i,:)=color(4,:);
                else if(stdev<=0.8)
                geocolor(i,:)=color(3,:);
                else if(stdev<=1)
                geocolor(i,:)=color(2,:);
                    else
                        geocolor(i,:)=color(1,:);
                    
                    end
                    end
            end
            
    end
   % p(1)=geopoint(p(2).Latitude,p(2).Longitude);
   size(p)
    wmmarker(p(2:i,:),'Color',geocolor(2:i,:));
            i=i+1;
        
    end
end
         
end
                
        
