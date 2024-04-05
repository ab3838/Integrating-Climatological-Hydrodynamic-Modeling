clear 
close all
clc

%addpath('/home/ab3838/Matlab_export_pack/altmany-export_fig-b32040d')

load('Coarse_anom.mat');
load('years.mat');



figurePosition = [1 41 1920/2 964/2];
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
%plot1H_f1 =plot(t,s8_hh5,t,s8_hu5,t,s8_hw5,to,s8)

%plot1H_f1 =plot(m_surge(:,1),m_surge(:,2))
plot1H_f1 = plot(years,Coarse_anom)
set(plot1H_f1, 'LineStyle','-','MarkerFaceColor', 'k',  'color', 'k','linewidth', 1.5)

%set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot([900 2040],[5.9 5.9])
set(plot1H_f1, 'LineStyle','--','MarkerFaceColor', 'k',  'color', 'k','linewidth', 1.5)


plot1H_f1 = plot([1850 1850],[0  45])
set(plot1H_f1, 'LineStyle','--','MarkerFaceColor', 'r',  'color', 'r','linewidth', 1.5)

%plot1H_f1 =plot(m_surge(15,1),m_surge(15,2))
%set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
%text(m_surge(15,1)-25,m_surge(15,2)+0.1,'Joaquin 2015','Color','k','FontSize',14)      


%plot1H_f1 =plot(m_surge(12,1),m_surge(12,2))
%set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
%text(m_surge(12,1)-16,m_surge(12,2)+0.1,'Irene 2011','Color','k','FontSize',14)      


%plot1H_f1 =plot(m_surge(7,1),m_surge(7,2))
%set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
%text(m_surge(7,1)-8,m_surge(7,2)+0.1,'Lili 1996','Color','k','FontSize',14)      

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%tide
%plot1H_f1 =plot(st(:,1),st(:,2))
%set(plot1H_f1, 'Marker','o','MarkerSize', 8,'MarkerFaceColor','none','MarkerEdgeColor','k','LineStyle','none')


%ll = [ 3, 9, 15, 77, 81, 84, 126 ];

%for i=1:7

ind = 3;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none')
text(years(ind)-7,Coarse_anom(ind)+2,'1','Color','k','FontSize',14)    

ind = 9;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','m','MarkerEdgeColor','m','LineStyle','none')
text(years(ind)-9,Coarse_anom(ind)+2,'2','Color','m','FontSize',14) 

ind = 15;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','[0.4660 0.6740 0.1880]','MarkerEdgeColor','[0.4660 0.6740 0.1880]','LineStyle','none')
text(years(ind)-15,Coarse_anom(ind)+2,'3','Color','[0.4660 0.6740 0.1880]','FontSize',14) 

ind = 77;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','[0.9290 0.69 0.1250]','MarkerEdgeColor','[0.9290 0.69 0.1250]','LineStyle','none')
text(years(ind)+3,Coarse_anom(ind)+1.5,'4','Color','[0.9290 0.69 0.1250]','FontSize',14) 

ind = 81;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
text(years(ind)-1,Coarse_anom(ind)+2,'5','Color','r','FontSize',14) 

ind = 84;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','[0.3 0.74 0.93]','MarkerEdgeColor','[0.3 0.74 0.93]','LineStyle','none')
text(years(ind)-19,Coarse_anom(ind)+2,'6','Color','[0.3 0.74 0.93]','FontSize',14) 


ind = 126;
plot1H_f1 =plot(years(ind),Coarse_anom(ind))
set(plot1H_f1, 'Marker','*','MarkerSize', 10,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','-')
text(years(ind)-5,Coarse_anom(ind)+2,'7','Color','b','FontSize',14) 

%making a star
for i=127:1148

    if (Coarse_anom(i)>5.9)
plot1H_f1 =plot(years(i),Coarse_anom(i))
set(plot1H_f1, 'Marker','*','MarkerSize', 9,'MarkerFaceColor','none','MarkerEdgeColor','k','LineStyle','none')
    end

end

%plot1H_f1 =plot(su(:,1),su(:,3))
%set(plot1H_f1, 'Marker','^','MarkerSize', 12,'MarkerFaceColor','none','MarkerEdgeColor','b','LineStyle','none')

%plot1H_f1 =plot(su(:,1),su(:,4))
%set(plot1H_f1, 'Marker','*','MarkerSize', 12,'MarkerFaceColor','none','MarkerEdgeColor','g','LineStyle','none')

% ll = [ 6, 7,10 ,15];
% for i=1:4
% % lx=[su(i,1),su(i,1),su(i,1)];
% % ly=[su(i,2),su(i,3),su(i,4)];
% 
% ind = ll(i);
% 
% lx=[su(ind,1),su(ind,1)];
% ly=[su(ind,2),su(ind,3)];
% 
% plot1H_f1 =plot(lx,ly)
% set(plot1H_f1, 'LineStyle','-','MarkerFaceColor', 'k',  'color', 'k','linewidth', 4)
% %set(plot1H_f1(1), 'MarkerSize', 2, 'LineStyle','--','MarkerFaceColor', 'r',  'color', 'r','linewidth', 3)
% hold on
% end

% 
% x1(1,1)=1852;
% x1(1,2)=0.67;
% 
% x1(2,1)=2020;
% x1(2,2)=0.67;
% 
% hold on
% plot1H_f1 =plot(x1(:,1),x1(:,2))
% set(plot1H_f1(1), 'LineStyle','--', 'color', 'r','linewidth', 2)
% 
% text(1852,0.75,'Surge Threshold','Color','r','FontSize',9)      

xlim([900  2040])
%ylim([0  1.7])


titleH_f1 = title(axes1H_f1,'Long Island Blue Hole (LIBH) Sediment Record');
xLabelH_f1 = xlabel(axes1H_f1,'Year CE');
yLabelH_f1 = ylabel(axes1H_f1,'Coarse Anomaly (63 um)');

set(axes1H_f1, 'color', 'k', ...
               'LineWidth', 3, ...
               'FontName', 'Arial',...
               'FontWeight', 'Bold',...
               'FontSize', 14, ...
               'Layer', 'top')      % This command will make sure the tick
           
set(titleH_f1, 'color', 'k', ...
               'LineWidth', 3, ...
               'FontName', 'Arial',...
               'FontWeight', 'Bold',...
               'FontSize', 14) % The title is separate from the axes   


set(figure1H, 'Position', figurePosition)
% set(gcf, 'Position', figurePosition)   
    % Setting a box around the axes
    
    %xtickformat('dd-MMM-yyyy')
box

    % Setting the background color of the figure to be none,
    % or transparent, if we do not have a figure handle we can 
    % use gcf instead as shown:
set(figure1H, 'color', 'w'); % set(gcf, 'color', 'none');

set(axes1H_f1, 'color', 'w'); % set(gca, 'color', 'none');

    % Again another axes adjustment
    
set(axes1H_f1, 'XColor', 'k', ...
            'YColor', 'k');
           


%xlim([datetime(2004,09,01,00,00,0)  datetime(2004,09,05,00,00,0)])

%export_fig(figure1H,'experimantal_data.png')
