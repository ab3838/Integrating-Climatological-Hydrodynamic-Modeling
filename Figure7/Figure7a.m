close all
clc 
clear all


load('x1918.mat');
load('y1918.mat');

load('x1926.mat');
load('y1926.mat');

load('x1928.mat');
load('y1928.mat');

load('x1932.mat');
load('y1932.mat');

load('xlili.mat');
load('ylili.mat');

load('xIrene.mat');
load('yIrene.mat');

load('xJoaquin.mat');
load('yJoaquin.mat');


% rm load
load("rm-hist-distribution.mat");


%%%%%%%%%%%% scaling y
y1918_s=y1918/max(y1918);
y1926_s=y1926/max(y1926);
y1928_s=y1928/max(y1928);
y1932_s=y1932/max(y1932);
ylili_s=ylili/max(ylili);
yIrene_s=yIrene/max(yIrene);
yJoaquin_s=yJoaquin/max(yJoaquin);

%shifting
a=2;


% figure plot
%figurePosition = [1 41 1920/2 964/2];
figurePosition = [1 1 1350 550];
% Figure 1
    % Open a figure with figure handle variable: figure1H 
    %                   (so we do not use gcf)
figure1H = figure(1);
    % Call the axes with the handle: axes1H (so we do not use gca)
axes1H_f1 = axes;
    % Calling the hold on, techincally not needed because 
    % we can plot a patch and the line without it removing 
    % or replacing the line (kind of strange)
% hold on
%box on

%figure(1)

% % llx=y1918_s+14;
% % llx(72)=y1918_s(1)+14;
% % 
% % lly=x1918;
% % lly(72)=x1918(1);
% % 
% % yyaxis 'right'
% % plot1H_f1 = patch(llx,lly,'r')
% % set(plot1H_f1, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % %%%%%%%%%%%%%%%%%%%%%%
% % 
% % llx=y1926_s+12;
% % llx(141)=y1926_s(1)+12;
% % 
% % lly=x1926;
% % lly(141)=x1926(1);
% % 
% % 
% % plot1H_f2 = patch(llx,lly,'r')
% % set(plot1H_f2, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % %%%%%%%%%%%%%%%%%%%%%%
% % 
% % llx=y1928_s+10;
% % llx(181)=y1928_s(1)+10;
% % 
% % lly=x1928;
% % lly(181)=x1928(1);
% % 
% % 
% % plot1H_f3 = patch(llx,lly,'r')
% % set(plot1H_f3, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % %%%%%%%%%%%%%%%%%%%%%%
% % 
% % llx=y1932_s+8;
% % llx(121)=y1932_s(1)+8;
% % 
% % lly=x1932;
% % lly(121)=x1932(1);
% % 
% % 
% % plot1H_f4 = patch(llx,lly,'r')
% % set(plot1H_f4, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % %%%%%%%%%%%%%%%%%%%%%%
% % 
% % llx=ylili_s+6;
% % llx(121)=ylili_s(1)+6;
% % 
% % lly=xlili;
% % lly(121)=xlili(1);
% % 
% % 
% % plot1H_f5 = patch(llx,lly,'r')
% % set(plot1H_f5, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % %%%%%%%%%%%%%%%%%%%%%%
% % 
% % llx=yIrene_s+4;
% % llx(181)=yIrene_s(1)+4;
% % 
% % lly=xIrene;
% % lly(181)=xIrene(1);
% % 
% % 
% % plot1H_f6 = patch(llx,lly,'r')
% % set(plot1H_f6, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % %%%%%%%%%%%%%%%%%%%%%%
% % 
% % llx=yJoaquin_s+2;
% % llx(141)=yJoaquin_s(1)+2;
% % 
% % lly=xJoaquin;
% % lly(141)=xJoaquin(1);
% % 
% % 
% % plot1H_f7 = patch(llx,lly,'r')
% % set(plot1H_f7, 'EdgeColor','r','MarkerFaceColor','r','FaceAlpha',0.3)
% % 
% % hold on
% % %%%%%%%%% adding point
% % plot1H_f8 = plot(2,1.39)
% % set(plot1H_f8, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.9290 0.6940 0.1250]','MarkerEdgeColor','k','LineStyle','-')
% % 
% % hold on
% % plot1H_f9 = plot(4,1.02)
% % set(plot1H_f9, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.9290 0.6940 0.1250]','MarkerEdgeColor','k','LineStyle','-')
% % 
% % hold on
% % plot1H_f10 = plot(6,0.67)
% % set(plot1H_f10, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.9290 0.6940 0.1250]','MarkerEdgeColor','k','LineStyle','-')
% % 
% % 
% % hold on
% % plot1H_f11 = plot(8,0.85)
% % set(plot1H_f11, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % 
% % 
% % hold on
% % plot1H_f12 = plot(10,1.1)
% % set(plot1H_f12, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % 
% % hold on
% % plot1H_f13 = plot(12,1.35)
% % set(plot1H_f13, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % 
% % 
% % hold on
% % plot1H_f14 = plot(14,0.84)
% % set(plot1H_f14, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % 
% % %%%%%%%%% adding point
% % plot1H_f15 = plot(2,1.65)
% % set(plot1H_f15, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % hold on
% % plot1H_f16 = plot(4,1.1)
% % set(plot1H_f16, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % hold on
% % plot1H_f17 = plot(6,0.57)
% % set(plot1H_f17, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.6350, 0.0780, 0.1840]','MarkerEdgeColor','[0.6350, 0.0780, 0.1840]','LineStyle','none')
% % 
% % 
% % 
% % 

text(2015.9,98,'Joaquin (2015)','FontSize',12,'color','k','Rotation',-90)
text(2011,98,'Irene (2011)','FontSize',12,'color','k','Rotation',-90)
text(1996,98,'Lili (1996)','FontSize',12,'color','k','Rotation',-90)
text(1932,98,'AL031932','FontSize',12,'color','k','Rotation',-90)
text(1928,98,'AL041928','FontSize',12,'color','k','Rotation',-90)
text(1924,98,'AL011926','FontSize',12,'color','k','Rotation',-90)
text(1891,98,'AL031891','FontSize',12,'color','k','Rotation',-90)
% % 
% % xlim([0 16])






%titleH_f1 = title(axes1H_f1,'Distribution of Storm Tides and Radius of Maximum Wind Estimations for Historical Storms');
%xLabelH_f1 = xlabel(axes1H_f1,'Return Period (year)');

           
%export_fig(figure1H,'rp_1988_2015.png')

%%%%%%%%%%%%%%%%%%%%%%

llx=-Joaquin(1,:)/max(Joaquin(1,:))*2+2015.9;
llx(101)=-Joaquin(1,1)/max(Joaquin(1,:))*2+2015.9;

lly=Joaquin(2,:);
lly(101)=Joaquin(2,1);

%yyaxis left
plot1H_f18 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f18, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



llx=-Irene(1,:)/max(Irene(1,:))*2+2011;
llx(101)=-Irene(1,1)/max(Irene(1,:))*2+2011;

lly=Irene(2,:);
lly(101)=Irene(2,1);

%yyaxis left
plot1H_f19 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f19, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


llx=-Lili(1,:)/max(Lili(1,:))*2+1996;
llx(101)=-Lili(1,1)/max(Lili(1,:))*2+1996;

lly=Lili(2,:);
lly(101)=Lili(2,1);

%yyaxis left
plot1H_f20 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f20, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


llx=-AL141932(1,:)/max(AL141932(1,:))*2+1932;
llx(101)=-AL141932(1,1)/max(AL141932(1,:))*2+1932;

lly=AL141932(2,:);
lly(101)=AL141932(2,1);

%yyaxis left
plot1H_f21 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f21, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


llx=-AL041928(1,:)/max(AL041928(1,:))*2+1928;
llx(101)=-AL041928(1,1)/max(AL041928(1,:))*2+1928;

lly=AL041928(2,:);
lly(101)=AL041928(2,1);

%yyaxis left
plot1H_f21 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f21, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


llx=-AL011926(1,:)/max(AL011926(1,:))*2+1926;
llx(101)=-AL011926(1,1)/max(AL011926(1,:))*2+1926;

lly=AL011926(2,:);
lly(101)=AL011926(2,1);

%yyaxis left
plot1H_f22 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f22, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



llx=-AL031891(1,:)/max(AL031891(1,:))*2+1891;
llx(101)=-AL031891(1,1)/max(AL031891(1,:))*2+1891;

lly=AL031891(2,:);
lly(101)=AL031891(2,1);

%yyaxis left
plot1H_f22 = patch(llx,lly,[0 0.4470 0.7410])
set(plot1H_f22, 'EdgeColor',[0 0.4470 0.7410],'MarkerFaceColor',[0 0.4470 0.7410],'FaceAlpha',0.3)

hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% adding points
%%%%%%%%% adding point
plot1H_f23 = plot(2015.9,mean(Joaquin(2,:))-2)
set(plot1H_f23, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')

hold on
plot1H_f24 = plot(2011,mean(Irene(2,:))-2)
set(plot1H_f24, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')

hold on
plot1H_f25 = plot(1996,mean(Lili(2,:))-2)
set(plot1H_f25, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')


hold on
plot1H_f26 = plot(1932,mean(AL141932(2,:))-2)
set(plot1H_f26, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')



hold on
plot1H_f27 = plot(1928,mean(AL041928(2,:))-2)
set(plot1H_f27, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')


hold on
plot1H_f28 = plot(1926,mean(AL011926(2,:))-2)
set(plot1H_f28, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')



hold on
plot1H_f29 = plot(1891,mean(AL031891(2,:))-2)
set(plot1H_f29, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','b','MarkerEdgeColor','b','LineStyle','none')

%%%%%%%%% adding point
plot1H_f30 = plot(2015.9,28)
set(plot1H_f30, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.2 0.8 0.1]','MarkerEdgeColor','[0.2 0.8 0.1]','LineStyle','none')

hold on
plot1H_f31 = plot(2011,45)
set(plot1H_f31, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.2 0.8 0.1]','MarkerEdgeColor','[0.2 0.8 0.1]','LineStyle','none')

hold on
plot1H_f32 = plot(1996,55.56)
set(plot1H_f32, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[0.2 0.8 0.1]','MarkerEdgeColor','[0.2 0.8 0.1]','LineStyle','none')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([1880 2020])
ylim([10 98])
%ylabel('R_m (km)');

yLabelH_f1 = ylabel(axes1H_f1,'R_m (km)');

%set(gca,'XColor', 'none','YColor','none')
% set(gca,'visible','off')
% set(gca,'xtick',[0.2 1])

%axes1H_f1.XAxis.Visible ='off';



set(axes1H_f1, 'color', 'k', ...
               'LineWidth', 2, ...
               'FontName', 'Arial',...
               'FontSize', 12)      % This command will make sure the tick
           
% set(titleH_f1, 'color', 'k', ...
%                'LineWidth', 2, ...
%                'FontName', 'Arial',...
%                'FontSize', 14) % The title is separate from the axes   


set(figure1H, 'Position', figurePosition)
% set(gcf, 'Position', figurePosition)   
    % Setting a box around the axes
    
    %xtickformat('dd-MMM-yyyy')
%box on

    % Setting the background color of the figure to be none,
    % or transparent, if we do not have a figure handle we can 
    % use gcf instead as shown:
set(figure1H, 'color', 'w'); % set(gcf, 'color', 'none');

set(axes1H_f1, 'color', 'w'); % set(gca, 'color', 'none');

    % Again another axes adjustment
    
set(axes1H_f1, 'XColor', 'k', ...
            'YColor', 'k');



print(gcf,'rm_distribution.png','-dpng','-r300'); 

