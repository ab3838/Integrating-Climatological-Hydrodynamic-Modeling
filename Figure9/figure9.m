close all
clc 
clear all


 load('Biased_correct_NCEP_N.mat');

 load('S_1988_2015_p.mat');
 load('RT_1988_2015_p.mat');


load('S_1988_2015.mat');
load('RP_1988_2015.mat');


load('S_ssp45.mat');
load('RP_ssp45.mat');


load('S_ssp85.mat');
load('RP_ssp85.mat');


%%%%%%%%%%%%%%


load('S_ncep_p.mat');
load('RT_ncep_p.mat');


load('S_ssp45_p.mat');
load('RT_ssp45_p.mat');


load('S_ssp85_p.mat');
load('RT_ssp85_p.mat');


%%%%%%%%%%%%%%%%%% sea level rise

load('S_ssp45_slr.mat');
load('RP_ssp45_slr.mat');


load('S_ssp85_slr.mat');
load('RP_ssp85_slr.mat');


%%%%%%%%%% non parametric

load('x_ncep.mat');
load('y_ncep.mat');

load('x_ssp45.mat');
load('y_ssp45.mat');


load('x_ssp85.mat');
load('y_ssp85.mat');

%%%%%%%%%% uq

load('uq_d_ssp45.mat');
load('uq_u_ssp45.mat');


load('uq_d_ssp85.mat');
load('uq_u_ssp85.mat');

load('uq_ssp45_surge.mat');
load('uq_ssp85_surge.mat');


%%%%%%%%%%%%%%%%% load bias correction
 load('psurge_1850_2015.mat');
 load('pRT_1850_2015.mat');

 %%%%%%%%%%%%%%%%% load bias correction
 load('psurge_1850_2015_biase_correct.mat');

 load('psurge_point_1850_2015.mat');
 load('pRP_points_1850_2015.mat');


x_7events(1)= 168.1198;
x_7events(2)= 84.3105;
x_7events(3)= 56.3145;
x_7events(4)= 42.4068;
x_7events(5)= 34.0263;
x_7events(6)= 28.4395;
x_7events(7)= 24.4491;

y_7events(1)= 1.39;
y_7events(2)= 1.35;
y_7events(3)= 1.10;
y_7events(4)= 1.02;
y_7events(5)= 0.85;
y_7events(6)= 0.84;
y_7events(7)= 0.69;


err_bar(1,1:2) = [1.2 1.9];
err_bar(2,1:2) = [0.9 1.6];
err_bar(3,1:2) = [0.7 1.6];
err_bar(4,1:2) = [0.7 1.6];
err_bar(5,1:2) = [0.62 1.1];
err_bar(6,1:2) = [0.67 1];
err_bar(7,1:2) = [0.35 0.9];

bond_bar(1)=12;
bond_bar(2)=6;
bond_bar(3)=4;
bond_bar(4)=3;
bond_bar(5)=2;
bond_bar(6)=2;
bond_bar(7)=2;



% load('surge_2070_2100_fit.mat');
% load('RP_2070_2100_fit.mat');


%figure(1)

%semilogx(RP_1988_2015_syn,surge_1988_2015_syn,'*')

% hold on
 
%semilogx(RP_1988_2015_syn_fit(30:16384),surge_1988_2015_syn_fit(30:16384))

%hold on

%semilogx(RP_2070_2100,surge_2070_2100,'.')

%hold on

%semilogx(RP_2070_2100_fit(30:16384),surge_2070_2100_fit(30:16384))

%hold on

%semilogx(RP_1988_2015,surge_1988_2015,'*')





%xlim([1 100000])


% figure plot
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
% hold on
%box on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% error bars
%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%*****************************

for i=1:7
plot1H_f33 = semilogx([x_7events(i) x_7events(i)],[err_bar(i,1) err_bar(i,2)])
set(plot1H_f33,  'LineStyle','-','MarkerFaceColor', '[0.2 0.6 0.1]',  'color', '[0.2 0.6 0.1]','linewidth', 1.0)

hold on

plot1H_f34 = semilogx([x_7events(i)-bond_bar(i) x_7events(i)+bond_bar(i)],[err_bar(i,1) err_bar(i,1)])
set(plot1H_f34,  'LineStyle','-','MarkerFaceColor', '[0.2 0.6 0.1]',  'color', '[0.2 0.6 0.1]','linewidth', 1.0)

hold on

plot1H_f35 = semilogx([x_7events(i)-bond_bar(i) x_7events(i)+bond_bar(i)],[err_bar(i,2) err_bar(i,2)])
set(plot1H_f35,  'LineStyle','-','MarkerFaceColor', '[0.2 0.6 0.1]',  'color', '[0.2 0.6 0.1]','linewidth', 1.0)

hold on
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% hold on
% %surge threshold
plot1H_f19 = semilogx([0.0001 5000 20000],[0.67 0.67 0.67])
set(plot1H_f19,  'LineStyle',':','MarkerFaceColor', 'm',  'color', 'm','linewidth', 1.2)
text(3000,0.81,'Surge Threshold','FontSize',10,'color','m')



hold on

plot1H_f1 = semilogx(RT_ncep_p,S_ncep_p)
set(plot1H_f1, 'Marker','o','MarkerSize', 5,'MarkerFaceColor','r','MarkerEdgeColor','k','LineStyle','none')

hold on

plot1H_f2 =semilogx(RP_1988_2015(40:16384),S_1988_2015(40:16384))
set(plot1H_f2, 'LineStyle','-','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.5)
 
hold on

plot1H_f3 = semilogx(RT_ssp45_p,S_ssp45_p+0.3151)
set(plot1H_f3, 'Marker','o','MarkerSize', 5,'MarkerFaceColor','b','MarkerEdgeColor','k','LineStyle','none')

hold on

plot1H_f4 = semilogx(RP_ssp45(30:16384),S_ssp45(30:16384)+0.2651)
set(plot1H_f4, 'LineStyle','-','MarkerFaceColor', 'b',  'color', 'b','linewidth', 2.5)
 
hold on

plot1H_f5 = semilogx(RT_ssp85_p,S_ssp85_p+0.3151)
set(plot1H_f5, 'Marker','o','MarkerSize', 5,'MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none')

hold on

plot1H_f6 = semilogx(RP_ssp85(30:16384),S_ssp85(30:16384)+0.2651)
set(plot1H_f6, 'LineStyle','-','MarkerFaceColor', 'k',  'color', 'k','linewidth', 2.5)



hold on

plot1H_f8 = semilogx(RP_ssp85_slr(1:16384),S_ssp85_slr(1:16384)+0.2651)
set(plot1H_f8,  'LineStyle','--','MarkerFaceColor', 'k',  'color', 'k','linewidth', 2.5)

hold on

plot1H_f9 = semilogx(RP_ssp45_slr(1:16384),S_ssp45_slr(1:16384)+0.2651)
set(plot1H_f9,  'LineStyle','--','MarkerFaceColor', 'b',  'color', 'b','linewidth', 2.5)



hold on

plot1H_f10 = semilogx(x_ssp85(1:35),y_ssp85(1:35)+0.2651)
set(plot1H_f10,  'LineStyle','-','MarkerFaceColor', 'k',  'color', 'k','linewidth', 2.5)

hold on

plot1H_f11 = semilogx(x_ssp45(1:70),y_ssp45(1:70)+0.3115)
set(plot1H_f11,  'LineStyle','-','MarkerFaceColor', 'b',  'color', 'b','linewidth', 2.5)

plot1H_f12 = semilogx(x_ncep,y_ncep)
set(plot1H_f12,  'LineStyle','-','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.5)



hold on

plot1H_f22 = semilogx(pRP_points_1850_2015,sort(psurge_point_1850_2015))
set(plot1H_f22, 'Marker','o','MarkerSize', 6,'MarkerFaceColor','[0.2 0.8 0.1]','MarkerEdgeColor','k','LineStyle','none')




hold on

% paleodata for deposit
% plot1H_f15 = semilogx(24,0.67)
% set(plot1H_f15, 'Marker','o','MarkerSize', 7,'MarkerFaceColor','[1 1 0]','MarkerEdgeColor','k','LineStyle','none')
% 
% hold on
% 
% plot1H_f16 = semilogx(16,0.67)
% set(plot1H_f16, 'Marker','o','MarkerSize', 10,'MarkerFaceColor','[1 1 0]','MarkerEdgeColor','k','LineStyle','none')
% 
% hold on
% 
% plot1H_f16 = semilogx(16,0.67)
% set(plot1H_f16, 'Marker','o','MarkerSize', 10,'MarkerFaceColor','[1 1 0]','MarkerEdgeColor','k','LineStyle','none')





%%%%%%%% uq plot

hold on

% xxx(1:16384)=uq_u_ssp85(1:16384);
% for i=1:16384
%     a=16385-i;
% xxx(16384+i)=uq_d_ssp85(a);
% end
% yyy(1:16384)=uq_ssp85_surge(1:16384);
% for i=1:16384
%     a=16385-i;
% yyy(16384+i)=uq_ssp85_surge(a);
% end

xxx(1:16374)=uq_u_ssp85(11:16384);
for i=1:16374
    a=16385-i;
xxx(16374+i)=uq_d_ssp85(a);
end
yyy(1:16374)=uq_ssp85_surge(11:16384);
for i=1:16374
    a=16385-i;
yyy(16374+i)=uq_ssp85_surge(a);
end

% load('t.mat');
% load('upper_bound.mat');
% load('lower_bound.mat');
% 
% lower_bound(963:1000)=2.13;
% upper_bound(963:1000)=4.12;
% 
% xxx(1:1000)=t(1:1000);
% xxx(1001:2000)=t(1000:-1:1);
% 
% yyy(1:1000)=upper_bound(1:1000);
% yyy(1001:2000)=lower_bound(1000:-1:1);





plot1H_f13 = patch(yyy,xxx+0.2651,'red')
set(plot1H_f13,'EdgeColor','none'  ,'FaceColor','[.7 .7 .7]','FaceAlpha',.35)

% 
hold on



plot1H_f20 = semilogx(pRT_1850_2015(30:16384),psurge_1850_2015(30:16384))
set(plot1H_f20,  'LineStyle','-','MarkerFaceColor', '[0.2 0.8 0.1]',  'color', '[0.2 0.8 0.1]','linewidth', 2.5)



load('x_BC_ncp.mat');
load('y_BC_ncp.mat');

x_line(1:33)=x_BC_ncp(8:40);
x_line(34:66)=x_ncep(41:73);

y_line(1:33)=y_BC_ncp(8:40)+0.15;
y_line(34:66)=y_ncep(41:73)+0.16;

hold on
plot1H_f39 = semilogx(x_line,y_line)
set(plot1H_f39,  'LineStyle',':','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.0)

% hold on
% plot1H_f39 = semilogx(x_BC_ncp(8:40),y_BC_ncp(8:40)+0.15)
% set(plot1H_f39,  'LineStyle',':','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.0)



% 
% hold on
% plot1H_f40 = semilogx(x_ncep(41:73),y_ncep(41:73)+0.2)
% set(plot1H_f40,  'LineStyle',':','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.0)

load('NCEP_bias_correct.mat');

hold on
plot1H_f41 = semilogx(RP_1988_2015(28:16384),NCEP_bias_correct(28:16384)+0.15)
set(plot1H_f41,  'LineStyle',':','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.0)

%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

hold on

% plot1H_f21 = semilogx(pRT_1850_2015(40:16384),psurge_1850_2015_biase_correct)
% set(plot1H_f21,  'LineStyle','-.','MarkerFaceColor', 'r',  'color', 'r','linewidth', 2.0)
% 
% hold on

%%%%%%%%%%%%%%%%%%%%%%% error bars
%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%*****************************

% plot1H_f30 = semilogx([x_7events(1) x_7events(1)],[err_bar(1,1) err_bar(1,2)])
% set(plot1H_f30,  'LineStyle','-','MarkerFaceColor', '[0.2 0.8 0.1]',  'color', '[0.2 0.8 0.1]','linewidth', 2.0)
% 
% hold on
% 
% plot1H_f31 = semilogx([x_7events(1)-10 x_7events(1)+10],[err_bar(1,1) err_bar(1,1)])
% set(plot1H_f31,  'LineStyle','-','MarkerFaceColor', '[0.2 0.8 0.1]',  'color', '[0.2 0.8 0.1]','linewidth', 2.0)
% 
% hold on
% 
% plot1H_f32 = semilogx([x_7events(1)-10 x_7events(1)+10],[err_bar(1,2) err_bar(1,2)])
% set(plot1H_f32,  'LineStyle','-','MarkerFaceColor', '[0.2 0.8 0.1]',  'color', '[0.2 0.8 0.1]','linewidth', 2.0)
% 
% hold on




% xxx(1:16384)=uq_u_ssp45(1:16384);
% for i=1:16384
%     a=16385-i;
% xxx(16384+i)=uq_d_ssp45(a);
% end
% yyy(1:16384)=uq_ssp45_surge(1:16384);
% for i=1:16384
%     a=16385-i;
% yyy(16384+i)=uq_ssp45_surge(a);
% end
% 
% 
% plot1H_f12 = patch(yyy,xxx,'red')
% set(plot1H_f12,'EdgeColor','none'  ,'FaceColor','blue','FaceAlpha',.35)


xlim([2 20000])
ylim([0 5.0])

%make the legend
 %legend1H_f1=legend([plot1H_f1,plot1H_f2,plot1H_f3,plot1H_f4,plot1H_f5,plot1H_f6,plot1H_f7,plot1H_f8,plot1H_f9,plot1H_f16,plot1H_f22,plot1H_f20],{'1988-2015 Synthetic','1988-2015 Synthetic fit','ssp 4.5','ssp 4.5 fit','ssp 8.5','ssp 8.5 fit','1988-2015 Historical','ssp8.5 SLR','ssp4.5 SLR','Paleohurricane','1850-2015 Historical','1850-2015 Historical fit'})
%legend1H_f1=legend([plot1H_f2,plot1H_f21,plot1H_f4,plot1H_f6,plot1H_f20,plot1H_f16],{'1988-2015 NCEP','1988-2015 NCEP bias corrected','ssp 4.5','ssp 8.5','1850-2015 Historical','Paleohurricane'})

legend1H_f1=legend([plot1H_f2,plot1H_f41,plot1H_f4,plot1H_f6,plot1H_f20],{'1988-2016 NCEP','1988-2016 NCEP bias corrected','ssp 4.5','ssp 8.5','1851-2016 Historical'})


% xlabel('Return Period (year)')
% ylabel('Surge (m)')


%titleH_f1 = title(axes1H_f1,'Storm tide at Long Island Blue Hole');
xLabelH_f1 = xlabel(axes1H_f1,'Return Period (year)');
yLabelH_f1 = ylabel(axes1H_f1,'Surge (m)');

set(axes1H_f1, 'color', 'k', ...
               'LineWidth', 3, ...
               'FontName', 'Arial',...
               'FontWeight', 'Bold',...
               'FontSize', 14, ...
               'Layer', 'top')      % This command will make sure the tick
           
% set(titleH_f1, 'color', 'k', ...
%                'LineWidth', 3, ...
%                'FontName', 'Arial',...
%                'FontWeight', 'Bold',...
%                'FontSize', 14) % The title is separate from the axes   


set(figure1H, 'Position', figurePosition)
% set(gcf, 'Position', figurePosition)   
    % Setting a box around the axes
    
    %xtickformat('dd-MMM-yyyy')
box on

    % Setting the background color of the figure to be none,
    % or transparent, if we do not have a figure handle we can 
    % use gcf instead as shown:
set(figure1H, 'color', 'w'); % set(gcf, 'color', 'none');

set(axes1H_f1, 'color', 'w'); % set(gca, 'color', 'none');

    % Again another axes adjustment
    
set(axes1H_f1, 'XColor', 'k', ...
            'YColor', 'k');
           
%export_fig(figure1H,'rp_1988_2015.png')


print(gcf,'figure9.png','-dpng','-r300'); 


