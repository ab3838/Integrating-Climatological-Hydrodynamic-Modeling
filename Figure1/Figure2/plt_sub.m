close all
clc
clear all




load('I11.mat');
load('J15.mat');
load('m16.mat');
load('R05.mat');
load('S12.mat');

x_blue=linspace(0,4,10);
x_red=linspace(0,4,10);

    
x=linspace(0,4,10);
y=x;

    
    a = x'\y';

figurePosition = [1 1 964/2*1.1 964/2];    

% Figure 1
    % Open a figure with figure handle variable: figure1H 
    %                   (so we do not use gcf)
figure1H = figure(1);
    % Call the axes with the handle: axes1H (so we do not use gca)
axes1H_f1 = axes;
    % Calling the hold on, techincally not needed because 
    % we can plot a patch and the line without it removing 
    % or replacing the line (kind of strange)
hold on


figure(1)

plot1H_f6 = plot(x,y)
set(plot1H_f6, 'MarkerSize', 2, 'MarkerFaceColor', '[0 0.6 0.8]', 'color', '[0 0.6 0.8]','linewidth', 3)


%plot1H_f1 =plot(t,s1_hh5,t,s1_hu5,t,s1_hw5,t,s1_hu5lt)

% plot1H_f1 =plot(x3,1.39*0.3048)
% set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','none','MarkerEdgeColor','m','LineStyle','none','linewidth', 2)

plot1H_f1 =plot(R05(:,2),R05(:,1))
set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none')

plot1H_f2 =plot(I11(:,2),I11(:,1))
set(plot1H_f2, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')

plot1H_f3 =plot(S12(:,2),S12(:,1))
set(plot1H_f3, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')

plot1H_f4 =plot(J15(:,2),J15(:,1))
set(plot1H_f4, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','[1 0.5 0]','MarkerEdgeColor','[1 0.5 0]','LineStyle','none')

plot1H_f5 =plot(m16(:,2),m16(:,1))
set(plot1H_f5, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','[0 0.7 0]','MarkerEdgeColor','[0 0.7 0]','LineStyle','none')

hold on


text(1.5,0.5,'R^2=0.94','Color','k','FontSize',12)    
text(1.5,0.62,'RMSE = 0.07','Color','k','FontSize',12) 

% plot1H_f2 = plot(x_blue,a*x_blue)
% set(plot1H_f2, 'MarkerSize', 2, 'MarkerFaceColor', 'r', 'color', 'r','LineStyle','--','linewidth', 3)
% 
% hold on


% 
% 
% hold on
% 
% plot1H_f3 = plot([0,10],[0,10])
% set(plot1H_f3, 'MarkerSize', 2, 'MarkerFaceColor', 'k', 'color', 'k','linewidth', 2)
% 

legend1H_f1=legend([plot1H_f1,plot1H_f2,plot1H_f3,plot1H_f4,plot1H_f5],{'Rita 2005','Irene 2011','Sandy 2012','Joaquin 2015','Matthew 2016'})


set(legend1H_f1,'color', 'none', ...
               'LineWidth', 3, ...
               'FontName', 'Arial',...
               'FontWeight', 'Bold',...
               'FontSize', 12) ;

ylim([0 2.2])
xlim([0 2.2])
%axis equal


titleH_f1 = title(axes1H_f1,' ');
xLabelH_f1 = xlabel(axes1H_f1,'Measured Peak Value (m)');
yLabelH_f1 = ylabel(axes1H_f1,'Model Peak Value (m)');

set(axes1H_f1, 'color', 'k', ...
               'LineWidth', 3, ...
               'FontName', 'Arial',...
               'FontWeight', 'Bold',...
               'FontSize', 12, ...
               'Layer', 'top')      % This command will make sure the tick
           
set(titleH_f1, 'color', 'k')% The title is separate from the axes
                          % need to set the color separately
                          


%set(legend1H_f1,'position',[0.168 0.332 1 1])
% set(legend1H_f1,'position','northwestoutside')
% % set(legend1H_f1,'text','k')
% % % set(legend1H_f1,'Box','off')     
% % set(legend1H_f1,'EdgeColor','k') 
               % Setting the position of the figure to be full screen before saving
set(figure1H, 'Position', figurePosition)
% set(gcf, 'Position', figurePosition)   
    % Setting a box around the axes
    

box

    % Setting the background color of the figure to be none,
    % or transparent, if we do not have a figure handle we can 
    % use gcf instead as shown:
set(figure1H, 'color', 'w'); % set(gcf, 'color', 'none');

set(axes1H_f1, 'color', 'w'); % set(gca, 'color', 'none');

    % Again another axes adjustment
    
set(axes1H_f1, 'XColor', 'k', ...
            'YColor', 'k');

        



