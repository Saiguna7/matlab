%% Algorithm:
% 1. Generate random weights (W0, W1, W2) for the single-layer neural network
% 2. Define the input data (X1, X2) for the desired logic gate
% 3. Compute the output (Y) using the equation: Y = W0 + W1*X1 + W2*X2
% 4. Plot the decision boundary and input data points
% 5. Determine if the logic gate is linearly separable based on the decision boundary

%% MATLAB Code
clear; close all; clc;

%% Random weights generation
W0 = rand() - 0.5;  % Bias weight
W1 = rand() - 0.5;  % Weight for input X1
W2 = rand() - 0.5;  % Weight for input X2

%% Input data for logic gates
X1_AND = [0 0 1 1];
X2_AND = [0 1 0 1];

X1_OR = [0 0 1 1];
X2_OR = [0 1 0 1];

X1_NAND = [0 0 1 1];
X2_NAND = [0 1 0 1];

X1_NOR = [0 0 1 1];
X2_NOR = [0 1 0 1];

X1_XOR = [0 0 1 1];
X2_XOR = [0 1 1 0];

%% Compute output and plot decision boundary
figure;

subplot(3, 2, 1);
Y_AND = W0 + W1*X1_AND + W2*X2_AND;
plotDecisionBoundary(W0, W1, W2, X1_AND, X2_AND, Y_AND, 'AND Gate');

subplot(3, 2, 2);
Y_OR = W0 + W1*X1_OR + W2*X2_OR;
plotDecisionBoundary(W0, W1, W2, X1_OR, X2_OR, Y_OR, 'OR Gate');

subplot(3, 2, 3);
Y_NAND = -(W0 + W1*X1_NAND + W2*X2_NAND);
plotDecisionBoundary(W0, W1, W2, X1_NAND, X2_NAND, Y_NAND, 'NAND Gate');

subplot(3, 2, 4);
Y_NOR = -(W0 + W1*X1_NOR + W2*X2_NOR);
plotDecisionBoundary(W0, W1, W2, X1_NOR, X2_NOR, Y_NOR, 'NOR Gate');

subplot(3, 2, 5);
Y_XOR = W0 + W1*X1_XOR + W2*X2_XOR;
plotDecisionBoundary(W0, W1, W2, X1_XOR, X2_XOR, Y_XOR, 'XOR Gate');

%% Function to plot decision boundary and input data points
function plotDecisionBoundary(W0, W1, W2, X1, X2, Y, title_str)
    % Plot decision boundary
    x = linspace(min(X1)-0.1, max(X1)+0.1, 100);
    y = linspace(min(X2)-0.1, max(X2)+0.1, 100);
    [X1_grid, X2_grid] = meshgrid(x, y);
    Y_grid = W0 + W1*X1_grid + W2*X2_grid;
    contour(X1_grid, X2_grid, Y_grid, [0 0], 'k', 'LineWidth', 2);
    hold on;

    % Plot input data points
    plot(X1(Y > 0), X2(Y > 0), 'bo', 'MarkerFaceColor', 'b');
    plot(X1(Y < 0), X2(Y < 0), 'ro', 'MarkerFaceColor', 'r');

    % Set axis labels and title
    xlabel('X1');
    ylabel('X2');
    title(title_str);
    axis square;
    hold off;
end