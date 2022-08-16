a=[0.5 1 2 3 5]
v=zeros(3,5);
v(1,:)=[39.25 41.23 45.13 48.93 56.12]
v(2,:)=[46.08 47.88 51.47 54.98 61.76]
v(3,:)=[41.44 43.35 47.14 50.83 57.86]

figure(1);
%坐标轴标签：名称
xlabel('Velocity / kph');
ylabel('Power / W');

%坐标轴字体大小，线宽
set(gca,'FontName','Times New Roman','FontSize',25,'LineWidth',2)
hold on;

%
plot(a,v(1,:),'.-','MarkerSize',30,'LineWidth',2.5);
plot(a,v(2,:),'.-','MarkerSize',30,'LineWidth',2.5);
plot(a,v(3,:),'.-','MarkerSize',30,'LineWidth',2.5);
hl=legend('P_{mech}','P_{air}','P_{total}','FontSize',30);
title('Power - Velocity Curve','FontSize',35)
hold off;
