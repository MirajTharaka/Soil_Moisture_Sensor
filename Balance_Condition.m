I=0;
while I==0
    V1=analogRead(a,1);
    V2=analogRead(a,2);
    VA=(V1*5)/1024;
    VB=(V2*5)/1024;
    V=VA-VB;
    if V==0
        [y,Fs]=audioread('Beep.wav');   
        sound(y,Fs);
        I=1;
    else
        disp('Calibrate the variable resistorS well.');
        I=0;
    end
end
run Voltage_Readings