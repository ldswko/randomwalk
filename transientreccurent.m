numSteps = 10000;
numTrials = 100;

returnsToOrigin_2D = 0;

figure;
hold on;
title('Sample 2D Random Walk');
xlabel('x');
ylabel('y');
grid on;

for trial = 1:numTrials
    x = zeros(1, numSteps+1);
    y = zeros(1, numSteps+1);

    for step = 1:numSteps
        move = randi(4);
        if move == 1
            x(step+1) = x(step) + 1;
            y(step+1) = y(step);
        elseif move == 2
            x(step+1) = x(step) - 1;
            y(step+1) = y(step);
        elseif move == 3
            y(step+1) = y(step) + 1;
            x(step+1) = x(step);
        elseif move == 4
            y(step+1) = y(step) - 1;
            x(step+1) = x(step);
        end
    end

    if trial == 1
        plot(x, y);
    end

    if x(end) == 0 && y(end) == 0
        returnsToOrigin_2D = returnsToOrigin_2D + 1;
    end
end

hold off;
fprintf('2D: Percentage of walks returning to origin = %.2f%%\n', 100 * returnsToOrigin_2D / numTrials);

returnsToOrigin_3D = 0;

figure;
hold on;
title('Sample 3D Random Walk');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

for trial = 1:numTrials
    x = zeros(1, numSteps+1);
    y = zeros(1, numSteps+1);
    z = zeros(1, numSteps+1);

    for step = 1:numSteps
        move = randi(6);
        if move == 1
            x(step+1) = x(step) + 1;
            y(step+1) = y(step);
            z(step+1) = z(step);
        elseif move == 2
            x(step+1) = x(step) - 1;
            y(step+1) = y(step);
            z(step+1) = z(step);
        elseif move == 3
            y(step+1) = y(step) + 1;
            x(step+1) = x(step);
            z(step+1) = z(step);
        elseif move == 4
            y(step+1) = y(step) - 1;
            x(step+1) = x(step);
            z(step+1) = z(step);
        elseif move == 5
            z(step+1) = z(step) + 1;
            x(step+1) = x(step);
            y(step+1) = y(step);
        elseif move == 6
            z(step+1) = z(step) - 1;
            x(step+1) = x(step);
            y(step+1) = y(step);
        end
    end

    if trial == 1
        plot3(x, y, z);
    end

    if x(end) == 0 && y(end) == 0 && z(end) == 0
        returnsToOrigin_3D = returnsToOrigin_3D + 1;
    end
end

hold off;
fprintf('3D: Percentage of walks returning to origin = %.2f%%\n', 100 * returnsToOrigin_3D / numTrials);
