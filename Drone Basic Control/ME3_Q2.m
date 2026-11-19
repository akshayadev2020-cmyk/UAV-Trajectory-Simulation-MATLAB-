%Task_1
Base = [5; 2];
D_rel = [15; 0];
theta = 60;
R = [cosd(theta), -sind(theta); 
     sind(theta),  cosd(theta)];
clc;
disp('Base Station:');
disp(Base);
disp('Relative Displacement:');
disp(D_rel);
disp('Rotation Matrix (R):');
disp(R);

%Task_2
Start_Pos = (R * D_rel) + Base;
disp('Start Position:');
disp(Start_Pos);

%Task_3
t = 0:0.1:30;
X_path = Start_Pos(1) + 2*t;
Y_path = Start_Pos(2) + 5*sin(t);

% Task_4: 

figure;
hold on;
plot(Base(1), Base(2), 'rs', 'MarkerSize', 10, 'MarkerFaceColor', 'red');
plot(Start_Pos(1), Start_Pos(2), 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'green');
plot(X_path, Y_path, 'b--', 'LineWidth', 1.5);
title('Drone Reconnaissance Path');
xlabel('X Position (units)');
ylabel('Y Position (units)');
hold off;
grid on;
legend('Base Station', 'Start Position', 'Flight Path', 'Location', 'best');
axis([0 75 0 25]);

%Task_5

Max_Y = max(Y_path);
Optimal_Y = Y_path(Y_path > 12);
Time_Optimal = length(Optimal_Y);
disp('Maximum Altitude Reached:');
disp(Max_Y);
disp('Number of data points in Optimal Zone:');
disp(Time_Optimal);