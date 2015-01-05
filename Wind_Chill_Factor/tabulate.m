%This script uses the wcf.m script to tabulate the Wind Chill Factor for
%temperature values between -20F to 55F and wind velocities between 0 mph to
%55 mph.

fprintf('%50s\n','Wind Speed/(miles per hour)')
fprintf('%7s','Temp/F')
for V=0:5:55
fprintf('%7.2f',V)
end
fprintf('\n')
for T=-20:5:55
fprintf('%7.2f',T)
for V=0:5:55
fprintf('%7.2f',wcf(T,V))
end
fprintf('\n')
end