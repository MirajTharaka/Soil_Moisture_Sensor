answer=1; %This is where we'll store the user's answer
s1=serial('COM4','BaudRate',115200); % Create serial communication object on port COM4
% s1=serial('COM4');
fopen(s1); % Initiate arduino communication

 while answer
     fprintf(s1,'%s',char(answer)); % Send answer variable content to arduino
     answer=- - -; % Ask user to enter value for variable answer
 end

fclose(s1); % End communication with arduino