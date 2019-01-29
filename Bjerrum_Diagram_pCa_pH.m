
% HA <----> H + A    
%Cat concentração inicial do ácido
 clear;
 K = 10^-06; % constante do ácido
 Cat = 10^-2 % concentração inicial do ácido monoprático
 
 pH = [0:0.1:14];
 
 H = 10.^(-pH);
 
 HA = Cat.*H./(K+H); 
 A = Cat*K./(K+H); 
 
 plot(pH,log10(HA),'r')
 hold on 
  plot(pH,log10(A),'b')
 plot(pH,log10(H),'g')
 set(gca,'ylim',[-6 0],'xlim',[0 14])
 ylabel('log[C] (mol/Kg)')
 xlabel('pH')
 legend('HA','A-','H+') 

 