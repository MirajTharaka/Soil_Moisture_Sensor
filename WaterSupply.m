%a=arduino('COM4');

servoAttach(a,3);

I=1;
while I==1
    VA=analogRead(a,10);
    VB=analogRead(a,11);
    V1=(VA*5)/1024;
    V2=(VB*5)/1024;
    if V1>V2
        V=V1-V2;
    else
        V=V2-V1;
    end
    
    if (0<=V)&&(V<=0.5)
        servoWrite(a,3,0);
    elseif (0.5<V)&&(V<=1)
        servoWrite(a,3,30);
    elseif (1<V)&&(V<=2)
        servoWrite(a,3,60);
    elseif (2<V)&&(V<=3)
        servoWrite(a,3,90);
    elseif (3<V)&&(V<=4)
        servoWrite(a,3,120);
    elseif (4<V)&&(V<=5)
        servoWrite(a,3,150);
    else
        servoWrite(a,3,180);
    end
end