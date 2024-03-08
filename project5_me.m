%% Load the Data
Data = xlsread('Battery_Parameters.xlsx');

%% Name the Data
SoC = Data(:,1);
OCV = Data(:,2);
R_charge = Data(:,3);
R_discharge = Data(:,4);
%% Plot the Data
plot(SoC, OCV)
figure
plot(SoC, R_charge)
figure
plot(SoC, R_discharge)
%% Define Param
I = 2.3; %Amps
Cn = 2.3*3600; %Capacity in AmpSecs
Sim_Time = 3600
%% Run the simulation
sim("Project5.slx")

