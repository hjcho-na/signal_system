
close all;                                    % 모든 생성된 창을 닫음 
clear all;                                    % 열려있는 작업영역(workspace)을 모두 비움 
clc;    

% t = 0:0.001:10;
t = 0:0.001:5;

x1 = cos(2*pi*3*t);
x2 = cos(2*pi*5*t);

figure
plot(t, x1, 'LineWidth', 2), hold on,
plot(t, x2, 'LineWidth', 2), hold off
grid on

legend('cos(2\pi 3t)', 'cos(2\pi 5t)', 'Location', 'SouthEast')
title('Continuous vs. Discrete'), xlabel('time[sec]'), ylabel('signal Amplitude')

set(gcf, 'Position',  [200, 200, 1200, 500])

% n = [0:1:5];
% 
% x1n = cos(2*pi*3*n);
% x2n = cos(2*pi*5*n);

% % figure
% stem(n*6*pi, x1n), hold on,
% stem(n*10*pi, x2n), hold off
% grid on

