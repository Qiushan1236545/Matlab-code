%Lotka-Volterra

t=0:0.1:20;x0=[100,1];k1=1;k2=0.8;b=0.9;c=0.007; 
% t：time frame
% x0：the initial number of zooplankton and sea lampreys (100 and 1)
% k1：zooplankton's growth rate during independent survival  
% k2：sea lamprey's death rate during independent survival
% b：sea lamprey's ability to prey on zooplankton
% c：zooplankton's ability to support sea lampreys
% x(1)，(x(t))：zooplankton's number
% x(2)，(y(t))：sea lampreys's number
y=@(t,x)[x(1).*(k1-b*x(2));x(2).*(-k2+c*x(1))]; 
[t,x]=ode45(y,t,x0);

%Volterra__x(t),y(t)
plot(t,x(:,1),'Linewidth',2,'Color','#FF8066');
hold on;
plot(t,x(:,2),'Linewidth',2,'Color','#3596B5');
grid; 
legend('$zooplankton$','$sea lampreys$','Interpreter',"latex",'Linewidth', 2); 
xlabel('Time   /Week','FontName','Times New Roman','Linewidth', 2);
ylabel('Number   of   species   /(×10^3)','FontName','Times New Roman','Linewidth', 2);
legend('boxoff');

%Volterra__y(x)
figure
plot(x(:,1),x(:,2),'Linewidth',2,'Color','#8695FF'),grid
xlabel('Number   of   zooplankton   /(×10^3)','FontName','Times New Roman','Linewidth', 2); 
ylabel('Number   of   sea   lampreys   /(×10^3)','FontName','Times New Roman','Linewidth', 2); 