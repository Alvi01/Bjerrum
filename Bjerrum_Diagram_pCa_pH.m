
% HA <----> H + A    
%Cat concentra��o inicial do �cido
 clear;
 K = 10^-06; % constante do �cido
 Cat = 10^-2 % concentra��o inicial do �cido monopr�tico
 
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

 