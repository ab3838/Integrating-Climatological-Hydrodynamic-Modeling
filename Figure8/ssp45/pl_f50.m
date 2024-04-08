clear 
close all
clc


%loading data

load('s_50.mat');
load('el.mat');
load('bnd.mat');
load('bnd2.mat');
load('bnd3.mat');


load('EToV.mat');
load('VX.mat');




zz_max(1:54916)=1.22;


for i=1:244

    aa=el(i);

    zz_max(aa)=s_50(i);

end

    


jetMap = [0,0,0.562500000000000;0,0,0.625000000000000;0,0,0.687500000000000;0,0,0.750000000000000;0,0,0.812500000000000;0,0,0.875000000000000;0,0,0.937500000000000;0,0,1;0,0.0625000000000000,1;0,0.125000000000000,1;0,0.187500000000000,1;0,0.250000000000000,1;0,0.312500000000000,1;0,0.375000000000000,1;0,0.437500000000000,1;0,0.500000000000000,1;0,0.562500000000000,1;0,0.625000000000000,1;0,0.687500000000000,1;0,0.750000000000000,1;0,0.812500000000000,1;0,0.875000000000000,1;0,0.937500000000000,1;0,1,1;0.0625000000000000,1,0.937500000000000;0.125000000000000,1,0.875000000000000;0.187500000000000,1,0.812500000000000;0.250000000000000,1,0.750000000000000;0.312500000000000,1,0.687500000000000;0.375000000000000,1,0.625000000000000;0.437500000000000,1,0.562500000000000;0.500000000000000,1,0.500000000000000;0.562500000000000,1,0.437500000000000;0.625000000000000,1,0.375000000000000;0.687500000000000,1,0.312500000000000;0.750000000000000,1,0.250000000000000;0.812500000000000,1,0.187500000000000;0.875000000000000,1,0.125000000000000;0.937500000000000,1,0.0625000000000000;1,1,0;1,0.937500000000000,0;1,0.875000000000000,0;1,0.812500000000000,0;1,0.750000000000000,0;1,0.687500000000000,0;1,0.625000000000000,0;1,0.562500000000000,0;1,0.500000000000000,0;1,0.437500000000000,0;1,0.375000000000000,0;1,0.312500000000000,0;1,0.250000000000000,0;1,0.187500000000000,0;1,0.125000000000000,0;1,0.0625000000000000,0;1,0,0;0.937500000000000,0,0;0.875000000000000,0,0;0.812500000000000,0,0;0.750000000000000,0,0;0.687500000000000,0,0;0.625000000000000,0,0;0.562500000000000,0,0;0.500000000000000,0,0];
jetCut = jetMap(1:3.8:end,:);


  figurePosition = [1 41 1920 964];
  
 
 figure1H = figure(1);
    % Call the axes with the handle: axes1H (so we do not use gca)
axes1H_f1 = axes;
% axes1H_f2 = axes;
    % Calling the hold on, techincally not needed because 
    % we can plot a patch and the line without it removing 
    % or replacing the line (kind of strange)
hold on



pl_fig1=trisurf( EToV, VX(:,1), VX(:,2), zz_max,'EdgeColor', 'None' )
set(gca, 'colormap', jetCut);
colorbar
view(0,90)
axis('equal')

caxis([0 5])
shading interp
colorbar


set(axes1H_f1,'colormap',jetCut);
set(pl_fig1,'edgecolor','none');

set(axes1H_f1,'ylim',[22.8 23.6]);
set(axes1H_f1,'xlim',[-75.4 -74.8]);


% making a line
hold on 

for i=1:86

    a=bnd(i);

    x(i)=VX(a,1);
    y(i)=VX(a,2);

end

%yy=smooth(y,0.02);

pl_fig2=plot(x,y)
set(pl_fig2,'LineStyle','-','color','k','LineWidth',3)



% making a line
hold on 

for i=1:13

    a=bnd2(i);

    x(i)=VX(a,1);
    y(i)=VX(a,2);

end

%yy=smooth(y,0.02);

pl_fig3=plot(x,y)
set(pl_fig3,'LineStyle','-','color','k','LineWidth',3)

% making a line
hold on 

for i=1:55

    a=bnd3(i);

    x(i)=VX(a,1);
    y(i)=VX(a,2);

end

%yy=smooth(y,0.02);

pl_fig4=plot(x,y)
set(pl_fig4,'LineStyle','-','color','k','LineWidth',3)


yLabelH_f1 = ylabel(axes1H_f1,'Latitude');
xLabelH_f1 = xlabel(axes1H_f1,'Longitude');


% yLabelH_f2 = ylabel(axes1H_f2,'Latitude');
% xLabelH_f2 = xlabel(axes1H_f2,'Longitude');
% 
% 
set(axes1H_f1, 'color', 'k', ...
               'LineWidth', 3, ...
               'FontName', 'Arial',...
               'FontWeight', 'Bold',...
               'FontSize', 18, ...
               'Layer', 'top')      % This command will make sure the tick
           
           
  %title          
 titleH_f1 = title(axes1H_f1,' ');

           
set(titleH_f1, 'color', 'k') % The title is separate from the axes
                          % need to set the color separately   


 set(gcf, 'Position', figurePosition)   

    % Setting a box around the axes
box

%axis('equal')

    % Setting the background color of the figure to be none,
    % or transparent, if we do not have a figure handle we can 
    % use gcf instead as shown:
set(figure1H, 'color', 'w'); % set(gcf, 'color', 'none');

set(axes1H_f1, 'color', 'w'); % set(gca, 'color', 'none');

    % Again another axes adjustment
    
set(axes1H_f1, 'XColor', 'k', ...
            'YColor', 'k');     


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
