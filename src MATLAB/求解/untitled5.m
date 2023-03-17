x=[0 44.2]

figure(1)
hold on;
plot(x,[263.25 263.25],LineWidth=2.5)
plot(x,[353.7 353.7],LineWidth=2.5)
plot(x,[225 225],LineWidth=2.5)
xlabel('distance / km');
ylabel('Power / W');
set(gca,'FontName','Times New Roman','FontSize',25,'LineWidth',2);
title('Power-distance','FontSize',35);
hl=legend('Sprinter','Time Specialist','Female bicyclist','FontSize',25);
yticks(150:50:600)
ylim([150,600])