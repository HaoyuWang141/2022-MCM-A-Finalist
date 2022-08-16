clc,clear
x=[1/60 1/12 1 5 60];
x_change=log10(x);
y_Sprinter=[1720.64 1577.25 699.75 360.75 283.75];
y_Time_Trialist=[1197.65 1097.85 568.1 389.35 353.60];
y_Female_Bicyclist=[993.42 910.25 446.05 300.85 224.95];

fig=figure(1);
p1 = plot(log10(x),y_Sprinter,'.','MarkerSize',20);
hold on;
plot(x_change,y_Time_Trialist,'.','MarkerSize',20);
plot(x_change,y_Female_Bicyclist,'.','MarkerSize',20);
set(gca,'Xtick',x_change);
set(gca,'XTickLabel',{'1sec','5sec','1min','5min','1hour'});
xlabel('TTM');
ylabel('Power / W');


x_run=[1/60 1/12 1 5];
y_Sprinter_run=[1720.64 1577.25 699.00 360.75];
y_Time_Trialist_run=[1197.65 1097.85 568.1 359.45];
y_Female_Bicyclist_run=[993.42 910.25 446.05 300.85];
%c(1)W_prime c(2)CP c(3)P_max
c1 = [574.75 263.25 1798.64];
F1=@(c1,x)c1(1)./(x-(c1(1)/(c1(2)-c1(3))))+c1(2);
[x_run,~]=lsqcurvefit(F1,c1,x_run,y_Sprinter_run);

c2=[328.35 353.7 1250.65];
F2=@(c2,x)c2(1)./(x-(c2(1)/(c2(2)-c2(3))))+c2(2);
%[x_run,~]=lsqcurvefit(F2,c2,x_run,y_Time_Trialist_run);

c3=[302.15 224.95 1031.42];
F3=@(c3,x)c3(1)./(x-(c3(1)/(c3(2)-c3(3))))+c3(2);
%[x_run,~]=lsqcurvefit(F3,c3,x_run,y_Female_Bicyclist_run);

x_fit=0:0.01:60;
y_fit=F1(c1,x_fit);
plot(log10(x_fit),y_fit,'LineWidth',2.5);
y_fit=F2(c2,x_fit);
plot(log10(x_fit),y_fit,'LineWidth',2.5);
y_fit=F3(c3,x_fit);
plot(log10(x_fit),y_fit,'LineWidth',2.5);

legend('Male Sprinter','Male Time Specialist','Female Bicyclist','Male Sprinter','Male Time Specialist','Female Bicyclist','FontSize',18);
set(gca,'FontName','Times New Roman','FontSize',25,'LineWidth',2)
title('Power Profile','FontSize',35);