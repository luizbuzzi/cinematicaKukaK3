close all
clear
clc

%atribuição dos eixos do robo para calculo da postura pela cinematica
%direta

%pose = [47.6 -114 76.08 42 36 21];
%pose = [0 -90 90 -45 10 0];
pose = [-40 -30 50 -45 10 0];

%obtenção da matriz de posição pela cinematica direta

T = cinematicadiretakuka(pose);

%T = [0 0 -1 475;0 1 0 0;1 0 0 -625;0 0 0 1];

%calculo das juntas do motor pela cinematica inversa

theta = cinematiainversakuka(T);

%simulação do robo, iniciando na postura theta

robokuka(theta);