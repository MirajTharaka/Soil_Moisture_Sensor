fprintf('\n');
V1=analogRead(a,1);
V2=analogRead(a,2);
VA=(V1*5)/1024;
VB=(V2*5)/1024;
V=((V1-V2)*5)/1024;
fprintf('VA is %.3f\n',VA);
fprintf('VB is %.3f\n',VB);
fprintf('V is %.3f\n',V);