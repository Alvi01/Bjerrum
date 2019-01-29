 clear all;
 K1 = 5.0119*10^-7 ; % K1 constante do �cido  carb�nico
 K2 = 5.0119*10^-11; % K2 constante do �cido  carb�nico

 DIC = 2280*10^-6; % CARBONO INORGANICO T�PICO DA AGUA DO MAR
 ALK = 2380*10^-6; %  ALCALINIDADE T�PICA DA AGUA DO MAR
 
 % inicializando vetores
 pH = (0:0.1:14);
 H = 10.^(-pH);
 %TamH = length(H);
 %H2CO3 = zeros(1,TamH);
 %HCO3 = zeros(1,TamH);
 %CO3 = zeros(1,TamH);
 
 %CALCULO DAS CURVAS DE CONCETRA��O VS PH
 H2CO3  = DIC ./1+(K1./H)+(K1*K2)./H.^2;
 HCO3 = DIC ./1+(H./K1)+(K2./H);
 CO3  = DIC ./1+(H.^2./(K1*K2))+(H./K2);
 pH2CO3 = -log10(H2CO3);
 pHCO3 = -log10(HCO3);
 pCO3 = -log10(CO3);

 % CONFIGURA��O DO GRAFICO
 %plot(pH,pH,'r')
 %plot(pH,14-pH,'k')
 hold on 
 
 plot(pH,pH2CO3,'b')
 plot(pH,pHCO3,'g')
 plot(pH,pCO3,'c')
 
 set(gca,'ylim',[-14 14],'xlim',[0 14])
 ylabel('pCa')
 xlabel('pH')
 %legend('H2CO3','HCO3-','CO3-2','H+','OH-') 
 