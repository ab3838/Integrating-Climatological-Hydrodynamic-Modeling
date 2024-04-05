clear 
close all
clc

%addpath('/home/ab3838/Matlab_export_pack/altmany-export_fig-b32040d')


m_surge(5,1)=1988;
m_surge(5,2)=0.44;

m_surge(6,1)=1995;
m_surge(6,2)=0.48;

m_surge(7,1)=1996;
m_surge(7,2)=0.67;

m_surge(8,1)=2004;
m_surge(8,2)=0.57;

m_surge(9,1)=2005.5;
m_surge(9,2)=0.49;

m_surge(10,1)=2005.95;
m_surge(10,2)=0.52;

m_surge(11,1)=2010;
m_surge(11,2)=0.46;

m_surge(12,1)=2011;
m_surge(12,2)=1;

m_surge(13,1)=2012;
m_surge(13,2)=0.44;

m_surge(14,1)=2013;
m_surge(14,2)=0.36;

m_surge(15,1)=2015.7;
m_surge(15,2)=1.39;

m_surge(16,1)=2015.9;
m_surge(16,2)=0.44;

m_surge(17,1)=2016.6;
m_surge(17,2)=0.33;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


sup(1,1)=1945;
sup(1,2)=0.37; %15 nmi
sup(1,3)=0.38; %30 nmi
sup(1,4)=0.38; %45 nmi

sup(2,1)=1942.9;
sup(2,2)=0.40; 
sup(2,3)=0.42;
sup(2,4)=0.45;

%corrected
sup(3,1)=1941;
sup(3,2)=0.61; 
sup(3,3)=0.76;
sup(3,4)=0.73;

sup(4,1)=1933.8;
sup(4,2)=0.60; 
sup(4,3)=0.66;
sup(4,4)=0.69;

sup(5,1)=1933.3;
sup(5,2)=0.44; 
sup(5,3)=0.52;
sup(5,4)=0.58;

%corrected
sup(6,1)=1932;
sup(6,2)=0.67; 
sup(6,3)=0.83;
sup(6,4)=0.80;

%corrected
sup(7,1)=1928.8;
sup(7,2)=0.90; 
sup(7,3)=1.45;
sup(7,4)=1.35;

sup(8,1)=1928.2;
sup(8,2)=0.58; 
sup(8,3)=0.60;
sup(8,4)=0.59;

sup(9,1)=1926.9;
sup(9,2)=0.53; 
sup(9,3)=0.55;
sup(9,4)=0.63;

%corrected
sup(10,1)=1926.2;
sup(10,2)=1.30; 
sup(10,3)=1.43;
sup(10,4)=1.41;

sup(11,1)=1924;
sup(11,2)=0.54; 
sup(11,3)=0.56;
sup(11,4)=0.59;

%corrected
sup(12,1)=1919;
sup(12,2)=0.65; 
sup(12,3)=0.77;
sup(12,4)=0.75;

%corrected
sup(13,1)=1908;
sup(13,2)=0.63; 
sup(13,3)=0.69;
sup(13,4)=0.68;

sup(14,1)=1899;
sup(14,2)=0.45; 
sup(14,3)=0.45;
sup(14,4)=0.47;

%corrected
sup(15,1)=1891;
sup(15,2)=0.75; 
sup(15,3)=0.88;
sup(15,4)=0.86;

sup(16,1)=1884;
sup(16,2)=0.61; 
sup(16,3)=0.72;
sup(16,4)=0.79;

sup(17,1)=1882;
sup(17,2)=0.60; 
sup(17,3)=0.62;
sup(17,4)=0.64;

sup(18,1)=1871;
sup(18,2)=0.61; 
sup(18,3)=0.73;
sup(18,4)=0.77;

sup(19,1)=1866;
sup(19,2)=0.58; 
sup(19,3)=0.62;
sup(19,4)=0.74;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
su(1,1)=1945;
su(1,2)=0.37; %15 nmi
su(1,3)=0.38; %30 nmi
su(1,4)=0.38; %45 nmi

su(2,1)=1942.9;
su(2,2)=0.40; 
su(2,3)=0.42;
su(2,4)=0.45;

su(3,1)=1941;
su(3,2)=0.54; 
su(3,3)=0.78;
su(3,4)=0.90;

su(4,1)=1933.8;
su(4,2)=0.60; 
su(4,3)=0.66;
su(4,4)=0.69;

su(5,1)=1933.3;
su(5,2)=0.44; 
su(5,3)=0.52;
su(5,4)=0.58;

su(6,1)=1932;
su(6,2)=0.68; 
su(6,3)=1.00;
su(6,4)=1.00;

su(7,1)=1928.8;
su(7,2)=0.80; 
su(7,3)=1.56;
su(7,4)=1.38;

su(8,1)=1928.2;
su(8,2)=0.58; 
su(8,3)=0.60;
su(8,4)=0.59;

su(9,1)=1926.9;
su(9,2)=0.53; 
su(9,3)=0.55;
su(9,4)=0.63;

su(10,1)=1926.2;
su(10,2)=1.05; 
su(10,3)=1.41;
su(10,4)=1.40;

su(11,1)=1924;
su(11,2)=0.54; 
su(11,3)=0.56;
su(11,4)=0.59;

su(12,1)=1919;
su(12,2)=0.55; 
su(12,3)=0.91;
su(12,4)=0.93;

su(13,1)=1908;
su(13,2)=0.63; 
su(13,3)=0.71;
su(13,4)=0.93;

su(14,1)=1899;
su(14,2)=0.45; 
su(14,3)=0.45;
su(14,4)=0.47;


su(15,1)=1891;
su(15,2)=0.69; 
su(15,3)=0.89;
su(15,4)=0.86;

su(16,1)=1884;
su(16,2)=0.58; 
su(16,3)=0.82;
su(16,4)=0.82;

su(17,1)=1882;
su(17,2)=0.60; 
su(17,3)=0.62;
su(17,4)=0.64;

su(18,1)=1871;
su(18,2)=0.58; 
su(18,3)=0.80;
su(18,4)=0.80;

su(19,1)=1866;
su(19,2)=0.61; 
su(19,3)=0.62;
su(19,4)=0.73;

%tidal
st(1,1)=1971;
st(1,2)=0.48; 

st(2,1)=1966;
st(2,2)=0.61; 

st(3,1)=1956.3;
st(3,2)=0.60; 

st(4,1)=1956.8;
st(4,2)=0.59; 

st(5,1)=1954;
st(5,2)=0.54; 

st(6,1)=1953;
st(6,2)=0.41; 

st(7,1)=1946;
st(7,2)=0.42; 

st(8,1)=1942;
st(8,2)=0.39; 

st(9,1)=1941;
st(9,2)=0.41; 

st(10,1)=1939;
st(10,2)=0.56; 

st(11,1)=1938;
st(11,2)=0.60; 

st(12,1)=1937;
st(12,2)=0.60;

st(13,1)=1936;
st(13,2)=0.37;

st(14,1)=1935;
st(14,2)=0.46;

st(15,1)=1934;
st(15,2)=0.60;

st(16,1)=1911;
st(16,2)=0.55;

st(17,1)=1906;
st(17,2)=0.50;

st(18,1)=1904;
st(18,2)=0.52;

st(19,1)=1903;
st(19,2)=0.36;

st(20,1)=1901;
st(20,2)=0.48;

st(21,1)=1900;
st(21,2)=0.48;

st(22,1)=1899;
st(22,2)=0.56;

st(23,1)=1890;
st(23,2)=0.35;

st(24,1)=1887;
st(24,2)=0.44;

st(25,1)=1877;
st(25,2)=0.40;

st(26,1)=1863;
st(26,2)=0.39;

st(27,1)=1853;
st(27,2)=0.43;

st(28,1)=1852;
st(28,2)=0.50;

% new st in 30 mi radus
st(29,1)=1945;
st(29,2)=0.38;

st(30,1)=1942.9;
st(30,2)=0.42;

st(31,1)=1933.8;
st(31,2)=0.66;

st(32,1)=1933.3;
st(32,2)=0.52;

st(33,1)=1928.2;
st(33,2)=0.60;

st(34,1)=1926.9;
st(34,2)=0.55;

st(35,1)=1924;
st(35,2)=0.56;

st(36,1)=1899;
st(36,2)=0.45;

st(37,1)=1882;
st(37,2)=0.62;

st(38,1)=1866;
st(38,2)=0.62;

st(39,1)=1971;
st(39,2)=0.48;

st(40,1)=1981.2;
st(40,2)=0.50;

st(41,1)=1981.6;
st(41,2)=0.44;

st(42,1)=1981.99;
st(42,2)=0.43;



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
hold on


figure(1)
%plot1H_f1 =plot(t,s8_hh5,t,s8_hu5,t,s8_hw5,to,s8)

plot1H_f1 =plot(m_surge(:,1),m_surge(:,2))
set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none')


plot1H_f1 =plot(m_surge(15,1),m_surge(15,2))
set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
text(m_surge(15,1)-25,m_surge(15,2)+0.1,'Joaquin 2015','Color','k','FontSize',14)      


plot1H_f1 =plot(m_surge(12,1),m_surge(12,2))
set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
text(m_surge(12,1)-16,m_surge(12,2)+0.1,'Irene 2011','Color','k','FontSize',14)      


plot1H_f1 =plot(m_surge(7,1),m_surge(7,2))
set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','r','MarkerEdgeColor','r','LineStyle','none')
text(m_surge(7,1)-8,m_surge(7,2)+0.1,'Lili 1996','Color','k','FontSize',14)      

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%tide
plot1H_f1 =plot(st(:,1),st(:,2))
set(plot1H_f1, 'Marker','o','MarkerSize', 8,'MarkerFaceColor','none','MarkerEdgeColor','k','LineStyle','none')



%ll = [3, 6, 7, 10 ,12, 13, 15, 16, 18];
% ll = [ 6, 7, 10 ,12, 13, 15, 16, 18];
% for i=1:8 %9
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


ll = [3, 6, 7, 10 ,12, 13, 15, 16, 18];

for i=1:9

ind = ll(i);

llxp = [sup(ind,1)-0.75, sup(ind,1)+0.75, sup(ind,1)+0.75, sup(ind,1)-0.75];
llyp = [sup(ind,4), sup(ind,4), sup(ind,2), sup(ind,2)];

plot1H_f1 =patch(llxp,llyp,'b')
set(plot1H_f1,'EdgeColor','none','MarkerFaceColor','b','FaceAlpha',0.6)

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 
% ll = [3, 6, 7, 10 ,12, 13, 15, 16, 18];
% 
% for i=1:9
% 
% ind = ll(i);
% 
% llx = [su(ind,1)-0.75, su(ind,1)+0.75, su(ind,1)+0.75, su(ind,1)-0.75];
% lly = [su(ind,3), su(ind,3), su(ind,2), su(ind,2)];
% 
% plot1H_f1 =patch(llx,lly,[0.7 0.7 0.7])
% set(plot1H_f1,'EdgeColor','none','MarkerFaceColor',[0.7 0.7 0.7],'FaceAlpha',0.7)
% 
% end


plot1H_f1 = plot(su(3,1),0.66)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(6,1),0.75)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(7,1),1.18)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(10,1),1.39)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(12,1),0.70)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(13,1),0.66)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(15,1),0.81)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(16,1),0.67)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')

plot1H_f1 = plot(su(18,1),0.66)
set(plot1H_f1, 'Marker','o','MarkerSize', 6,'MarkerFaceColor',[0.92 0.69 0.12],'MarkerEdgeColor','k','LineStyle','none')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x1(1,1)=1852;
x1(1,2)=0.67;

x1(2,1)=2020;
x1(2,2)=0.67;

hold on
plot1H_f1 =plot(x1(:,1),x1(:,2))
set(plot1H_f1(1), 'LineStyle','--', 'color', 'r','linewidth', 2)

text(1852,0.85,'Surge Threshold','Color','r','FontSize',9)     

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
text(1924,0.85,'AL031932','Color','k','FontSize',12) 

text(1929,1.40,'AL041928','Color','k','FontSize',12) 

text(1906,1.35,'AL011926','Color','k','FontSize',12) 

text(1882,0.94,'AL031891','Color','k','FontSize',12) 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



xlim([1850  2020])
ylim([0  1.7])


%titleH_f1 = title(axes1H_f1,'Storm tide at Long Island Blue Hole');
titleH_f1 = title(axes1H_f1,' ');
%xLabelH_f1 = xlabel(axes1H_f1,'time (hours)');
%yLabelH_f1 = ylabel(axes1H_f1,'\eta(ft)');
yLabelH_f1 = ylabel(axes1H_f1,'Storm tide (m)');

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

%export_fig(figure1H,'surgethresholdf_shadedm15p10.png')
