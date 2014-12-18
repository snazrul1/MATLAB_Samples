%The following code simulates the motion of Na+ and Cl- ions in both
%Benzene and water. The code will generate subplots of Force and
%Displacement with respect to time in both Benezene and water.



clear all                                           %Clear all stored data 
clc                                                 %Clear screen

E1=80.4;                                            %Relative Dielectric Constant(Water)
E2=2.284;                                           %Relative Dielectric Constant(Benzene)
E0=8.8542e-12;                                      %Dielectric Constant in vacuum
Q1=1.6022e-19;                                      %Charge of Na+
Q2=-1.6022e-19;                                     %Charge of Cl-
m=1.1903e-28;                                       %Effective mass (same for both ions)

t=linspace(0,5,51);                                 %Time vector for 0-5 seconds

%%Calculation for Water

%%Constructing dummy zero matrices:
r1=zeros(1,51);                                     %Displacement
v1=zeros(1,51);                                     %Velocity
F1=zeros(1,51);                                     %Force in Water

%%Setting initial values for velocity, displacement and force:
v1(1,1)=0; 
r1(1,1)=2e-9;
F1(1,1)=(Q1*Q2)/((4*pi*E0*E1)*(r1(1,1)^2));

%%Constructing for-loop for 50 integration steps:
for n=1:50
dt=n*0.1;                                           %Time intervals
v1(1,n+1)=v1(1,n)+((F1(1,n)/m)*dt);                 %Velocity matrix calculation
r1(1,n+1)=r1(1,n)+(v1(1,n+1)*dt);                   %Displacement matrix calculation
F1(1,n+1)=(Q1*Q2)/((4*pi*E0*E1)*((r1(1,n+1))^2));   %Force matrix calculation
end

%%Calculation for Benzene

%%Constructing dummy zero matrices:
r2=zeros(1,51);                                     %Displacement
v2=zeros(1,51);                                     %Velocity
F2=zeros(1,51);                                     %Force in Water

%%Setting initial values for velocity, displacement and force:
v2(1,1)=0; 
r2(1,1)=2e-9;
F2(1,1)=(Q1*Q2)/((4*pi*E0*E2)*(r2(1,1)^2));

%%Constructing for-loop for 50 integration steps:
for n=1:50
dt=n*0.1;                                           %Time intervals
v2(1,n+1)=v2(1,n)+((F2(1,n)/m)*dt);                 %Velocity matrix calculation
r2(1,n+1)=r2(1,n)+(v2(1,n+1)*dt);                   %Displacement matrix calculation
F2(1,n+1)=(Q1*Q2)/((4*pi*E0*E2)*((r2(1,n+1))^2));   %Force matrix calculation
end

%%Plotting graph

%Plotting graph for Position in Water:
subplot(2,2,1); 
plot(t,r1);
xlabel('Time (s)'),ylabel('Distance (m)');
title('Position in Water');

%Plotting graph for Force in Water:
subplot(2,2,3);
plot(t,F1),xlabel('Time (s)'),ylabel('Force (N)');
title('Force in Water');

%Plotting graph for Position in Benzene:
subplot(2,2,2); 
plot(t,r2);
xlabel('Time (s)'),ylabel('Distance (m)');
title('Position in Benzene');

%Plotting graph for Force in Benzene:
subplot(2,2,4);
plot(t,F2);
xlabel('Time (s)'),ylabel('Force (N)');
title('Force in Benzene');
