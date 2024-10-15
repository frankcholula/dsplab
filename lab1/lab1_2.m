figure;

% i) y = x * x, with x = [0, 0, 1, 1, 1]
x = [0,0,1,1,1];
nx = -2:2;
[y, ny] = convolve(x, x, nx, nx);
subplot(3,2,1);
stem(ny, y);
title('Convolution: x * x');
xlabel('n');
ylabel('y[n]');

% ii) y = x * h, with x = [0, 0, 1, 1, 1] and h = [1, 1]
x = [0,0,1,1,1];
nx = -2:2;
h = [1,1];
nh = 0:1;
[y, ny] = convolve(x, h, nx, nh);
subplot(3,2,2);
stem(ny, y);
title('Convolution: x * h with h = [1, 1]');
xlabel('n');
ylabel('y[n]');

% iii) y = x * h, with x = [0, 0, 1, 1] and h = [0.5, 0.5]
x = [0,0,1,1];
nx = 0:3;
h = [0.5,0.5];
nh = 0:1;
[y, ny] = convolve(x, h, nx, nh);
subplot(3,2,3);
stem(ny, y);
title('Convolution: x * h with h = [0.5, 0.5]');
xlabel('n');
ylabel('y[n]');

% iv) y = x * h, with x = [1,2,3,4,3,2] and h = [0.5, 0.5]
x = [1,2,3,4,3,2];
xtilde = repmat(x, 1, 10);
nx = 0: length(xtilde) - 1;
h = [0.5, 0.5];
nh = 0:1;
[y, ny] = convolve(xtilde, h, nx, nh);
subplot(3,2,4);
stem(ny, y);
title('Convolution: xtilde * h with x = [1,2,3,4,3,2]');
xlabel('n');
ylabel('y[n]');

% v) 
x = [0,0,1,1];
xtilde = repmat(x, 1, 10);
nx = 0: length(xtilde) - 1;
h = [0.5, 0.5];
nh = 0:1;
[y, ny] = convolve(xtilde, h, nx, nh);
subplot(3,2,5); % Fifth subplot (row 3, col 1)
stem(ny, y)
title('Convolution: xtilde * h with x = [0,0,1,1]')
xlabel('n');
ylabel('y[n]');

% Display the figure
sgtitle('Convolution Examples');