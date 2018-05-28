function robokuka(theta)

%cria os links conforme matrizes de Denavit-Hartenberg e seta limites de
%operação
L(1) = Link('revolute','d',-345,'a',20,'alpha',pi/2, 'qlim',[-170*pi/180 +170*pi/180]);
L(2) = Link('revolute','d',0,'a',260,'alpha',0, 'qlim',[-170*pi/180 +50*pi/180]);
L(3) = Link('revolute','d',0,'a',20,'alpha',pi/2,'offset',-pi/2,'qlim',[-110*pi/180 +155*pi/180]);
L(4) = Link('revolute','d',-260,'a',0,'alpha',-pi/2, 'qlim',[-175*pi/180 +175*pi/180]);
L(5) = Link('revolute','d',0,'a',0,'alpha',pi/2, 'qlim',[-120*pi/180 +120*pi/180]);
L(6) = Link('revolute','d',-195,'a',0,'alpha',0, 'qlim',[-350*pi/180 +350*pi/180]);

%publica o robo
roboRR=SerialLink(L,'name','Kuka K3');

%postura inicial revcebida como entrada da funçao
Q = theta*pi/180;
%ajusta o ground
roboRR.teach(Q,'notiles','floorlevel',0,'lightpos',[0 0 -1000])
set(gca,'Xdir','reverse','Zdir','reverse','ZLim',[-1000 100])
%plota a simulação
roboRR.plot(Q)

