__author__='Sadat'

%This code edits a file (phonenos.txt) of phone numbers. 
%The phone numbers are stored in the following format:
%6012425932
%The code edits the numbers into the following form:
%601-242-5932

load phonenos.txt
N=num2str(phonenos);
[r,c]=size(N);

for i=1:r;
fprintf('%s-%s-%s\n',N(i,1:3),N(i,4:6),N(i,7:10)) 
end
