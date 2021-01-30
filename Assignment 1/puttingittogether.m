% Define the data x and dat y

datx = rand(20,1);
daty = rand(20,1);


% Define f, x and evaluate y=f(x)
f = @(x) x;

x = [min(datx):0.01:max(datx)];

y = f(x);

% Create plot

sz = 140;
scatter(datx,daty,sz,'filled')
hold on
plot(x,y,'LineWidth',4) 
set(gca,'FontSize',20)
hold off

% Label axes
xlabel('x')
ylabel('y')

% Legend
legend({'data','y = x'},'Location','best')