clc,clear
x=0:1:80;
y1 = 5.*(x/3.6);
y2 = 0.00328.*(x).^3;
y3 = y1+y2;

figure(1);
xlabel('Velocity / kph','FontSize',20);
ylabel('Power / W','FontSize',20);
set(gca,'FontName','Times New Roman','FontSize',25,'LineWidth',2)
hold on;
plot(x,y1,'LineWidth',2.5);
plot(x,y2,'LineWidth',2.5);
plot(x,y3,'LineWidth',2.5);
hl=legend('P_{mech}','P_{air}','P_{total}','FontSize',30);
title('Power - Velocity Curve','FontSize',35)
hold off;
