%a=arduino('COM4');

pinMode(a,9,'OUTPUT');

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
    
    if V >= 0.5
        digitalWrite(a,9,1);
    else
        digitalWrite(a,9,0);
    end
    
    M=-7.862*V+20.811;
    fprintf('THE MOISTURE CONTENT IS %.3f %%.\n',M);
    fprintf('\n');
end