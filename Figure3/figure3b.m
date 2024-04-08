clear 
close all
clc

addpath('/home/ab3838/Matlab_export_pack/altmany-export_fig-b32040d')

load('Experiment.mat');

modified_year(1)=2016;
modified_year(2)=2015.9;
modified_year(3)=2015.6;
modified_year(4:8)=linspace(2015,2012,5);
modified_year(9)=2011;
modified_year(10:14)=linspace(2010,1997,5);
modified_year(15)=1996;
modified_year(16:26)=linspace(1995,1988,11);

modified_year(27:76)=linspace(1987,1933,50);
modified_year(77)=1932;
modified_year(78:80)=linspace(1931,1928.8,3);
modified_year(81)=1928.2;
modified_year(82)=1927.0;
modified_year(83)=1926.8;
modified_year(84)=1926.0;
modified_year(85:125)=linspace(1925,1892,41);
modified_year(126)=1891.0;
modified_year(127:148)=linspace(1890,1850,22);



Experiment(1,1:148)=modified_year(1:148);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
su(1,1)=1945;
su(1,2)=0.37; %15 nmi
su(1,3)=0.38; %30 nmi
su(1,4)=0.38; %45 nmi

su(2,1)=1942.9;
su(2,2)=0.40; 
su(2,3)=0.42;
su(2,4)=0.45;

su(3,1)=1941;
su(3,2)=0.64; 
su(3,3)=0.76;
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
su(6,2)=0.69; 
su(6,3)=0.90;
su(6,4)=1.00;

su(7,1)=1928.8;
su(7,2)=0.92; 
su(7,3)=1.45;
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
su(10,2)=1.31; 
su(10,3)=1.40;
su(10,4)=1.40;

su(11,1)=1924;
su(11,2)=0.54; 
su(11,3)=0.56;
su(11,4)=0.59;

su(12,1)=1919;
su(12,2)=0.65; 
su(12,3)=0.87;
su(12,4)=0.93;

su(13,1)=1908;
su(13,2)=0.65; 
su(13,3)=0.70;
su(13,4)=0.93;

su(14,1)=1899;
su(14,2)=0.45; 
su(14,3)=0.45;
su(14,4)=0.47;


su(15,1)=1891;
su(15,2)=0.75; 
su(15,3)=0.87;
su(15,4)=0.86;

su(16,1)=1884;
su(16,2)=0.65; 
su(16,3)=0.69;
su(16,4)=0.79;

su(17,1)=1882;
su(17,2)=0.60; 
su(17,3)=0.62;
su(17,4)=0.64;

su(18,1)=1871;
su(18,2)=0.64; 
su(18,3)=0.70;
su(18,4)=0.77;

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
    % Callin
    %g the hold on, techincally not needed because 
    % we can plot a patch and the line without it removing 
    % or replacing the line (kind of strange)
hold on


figure(1)

plot1H_f1 =plot(Experiment(1,:),Experiment(2,:))
set(plot1H_f1, 'LineStyle','-','MarkerFaceColor', 'k',  'color', 'k','linewidth', 2)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% uncertainity of age

hold on
llx = [2011, 2011, 2016.3, 2016.3];
lly = [31.45, 31.85, 31.85, 31.45];

plot1H_f2 =patch(llx,lly,[0.3 0.7 0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3 0.7 0.9],'FaceAlpha',0.6)

hold on
llx = [1998, 1998, 2014, 2014];
lly = [6.76, 7.16, 7.16, 6.76];

plot1H_f2 =patch(llx,lly,[0.3 0.7 0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3 0.7 0.9],'FaceAlpha',0.6)
hold on

llx = [1982, 1982, 2013, 2013];
lly = [5.9, 6.3, 6.3, 5.9];

plot1H_f2 =patch(llx,lly,[0.3 0.7 0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3 0.7 0.9],'FaceAlpha',0.6)
hold on

llx = [1903, 1903, 1962, 1962];
lly = [13.3, 13.7, 13.7, 13.3];

plot1H_f2 =patch(llx,lly,[0.3 0.7 0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3 0.7 0.9],'FaceAlpha',0.6)
hold on

llx = [1901, 1901, 1959, 1959];
lly = [25.36, 25.76, 25.76, 25.36];

plot1H_f2 =patch(llx,lly,[0.3 0.7 0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3 0.7 0.9],'FaceAlpha',0.6)
hold on

llx = [1899, 1899, 1957, 1957];
lly = [8.93, 9.33, 9.33, 8.93];

plot1H_f2 =patch(llx,lly,[0.3,0.7,0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3,0.7,0.9],'FaceAlpha',0.6)
hold on

llx = [1848, 1848, 1915, 1915];
lly = [13.85, 14.25, 14.25, 13.85];

plot1H_f2 =patch(llx,lly,[0.3,0.7,0.9])
set(plot1H_f2,'EdgeColor','none','MarkerFaceColor',[0.3,0.7,0.9],'FaceAlpha',0.6)
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%plot1H_f1 =plot(m_surge(:,1),m_surge(:,2))
%set(plot1H_f1, 'Marker','o','MarkerSize', 12,'MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none')


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



ll = [3, 6, 7, 10 ,12, 13, 15, 16, 18];

for i=1:9

ind = ll(i);

lx=[su(ind,1),su(ind,1)];
ly=[su(ind,2),su(ind,3)];

% plot1H_f1 =plot(lx,ly)
% set(plot1H_f1, 'LineStyle','-','MarkerFaceColor', 'k',  'color', 'k','linewidth', 4)
hold on
end



hold on


text(modified_year(3)-1.5,Experiment(2,3),'*','Color','r','FontSize',22)    
text(modified_year(9)-1.5,Experiment(2,9),'*','Color','r','FontSize',22)   
text(modified_year(15)-1.5,Experiment(2,15),'*','Color','r','FontSize',22)  
text(modified_year(77)-1.5,Experiment(2,77),'*','Color','r','FontSize',22)    
text(modified_year(81)-1.5,Experiment(2,81),'*','Color','r','FontSize',22)   
text(modified_year(84)-1.5,Experiment(2,84),'*','Color','r','FontSize',22) 
text(modified_year(126)-1.5,Experiment(2,126),'*','Color','r','FontSize',22)  


% threshold line
x1(1,1)=1850;
x1(1,2)=5.9;

x1(2,1)=2020;
x1(2,2)=5.9;

hold on
plot1H_f1 =plot(x1(:,1),x1(:,2))
set(plot1H_f1(1), 'LineStyle','--', 'color', 'm','linewidth', 2)

text(1852,7,'Threshold','Color','m','FontSize',9) 

%%%%%%%%%%%%%%
text(2012,33.5,'1','Color','k','FontSize',18) 

text(2009,9.8,'2','Color','k','FontSize',18) 
text(1994,8,'3','Color','k','FontSize',18) 


text(1930,15.5,'4','Color','k','FontSize',18) 
%text(1930,17,'Unnamed 1932','Color','k','FontSize',12) 
%text(1930,15.5,'Oct 30 to Nov 14','Color','k','FontSize',12) 

text(1926,27.7,'5','Color','k','FontSize',18) 
%text(1916,29,'Unnamed 1928','Color','k','FontSize',12) 
%text(1914,27.5,'Sep 06 to Sep 21','Color','k','FontSize',12) 

text(1922,11,'6','Color','k','FontSize',18) 
%text(1898,13,'Unnamed 1926','Color','k','FontSize',12) 
%text(1898,11.5,'Jul 22 to Aug 02','Color','k','FontSize',12) 

text(1888,16,'7','Color','k','FontSize',18) 
% text(1880,18.5,'Unnamed 1891','Color','k','FontSize',12) 
% text(1878,17,'Aug 18 to Aug 25','Color','k','FontSize',12) 







xlim([1850  2020])
% ylim([0  1.7])


titleH_f1 = title(axes1H_f1,' ');
yLabelH_f1 = ylabel(axes1H_f1,'Coarse Anomaly');

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
           


export_fig(figure1H,'surgethreshold_coarse.png')
