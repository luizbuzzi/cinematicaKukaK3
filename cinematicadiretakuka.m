function T06 = cinematicadiretakuka(theta)

%transforma entrada em radianos
conv = pi/180;

t1 = theta(1)*conv;
t2 = theta(2)*conv;
t3 = theta(3)*conv;
t4 = theta(4)*conv;
t5 = theta(5)*conv;
t6 = theta(6)*conv;

%calculo da postura pelas matrizes de Denavit-Hartenberg

A1 = [cos(t1) 0 sin(t1) 20*cos(t1);
      sin(t1) 0 -cos(t1) 20*sin(t1);
      0 1 0 -345;
      0 0 0 1];
A2 = [cos(t2) -sin(t2) 0 260*cos(t2);
      sin(t2) cos(t2) 0 260*sin(t2);
      0 0 1 0;
      0 0 0 1];
A3 = [cos(t3-pi/2) 0 sin(t3-pi/2) 20*cos(t3-pi/2);
      sin(t3-pi/2) 0 -cos(t3-pi/2) 20*sin(t3-pi/2);
      0 1 0 0;
      0 0 0 1];
A4 = [cos(t4) 0 -sin(t4) 0;
      sin(t4) 0 cos(t4) 0;
      0 -1 0 -260;
      0 0 0 1];
A5 = [cos(t5) 0 sin(t5) 0;
      sin(t5) 0 -cos(t5) 0;
      0 1 0 0;
      0 0 0 1];
A6 = [cos(t6) -sin(t6) 0 0;
      sin(t6) cos(t6) 0 0;
      0 0 1 -195;
      0 0 0 1];
  
%Retorna matriz transforma��o de 0 a 6
  
T06 = A1*A2*A3*A4*A5*A6;
