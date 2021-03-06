      
%Procesado prueba unica tenis
        caderaT=load('erika_AngulosCadera.mat');
        rodillaT=load('erika_AngulosRodilla.mat');
        tobilloT=load('erika_AngulosTobillo.mat');
        tiempoT=load('erika_TiempoAngulos.mat');
        caderaT=struct2cell(caderaT);
        caderaT=cell2mat(caderaT);
        rodillaT=struct2cell(rodillaT);
        rodillaT=cell2mat(rodillaT);
        tobilloT=struct2cell(tobilloT);
        tobilloT=cell2mat(tobilloT);
        tiempoT=struct2cell(tiempoT);
        tiempoT=cell2mat(tiempoT);
        [val pos]=find(rodillaT>180);
        rodillaT(1,pos)=180;
        [val pos]=find(rodillaT<115);
        rodillaT(1,pos)=115;
        %filtrado pie
        [val pos]=find(tobilloT>115);
        tobilloT(1,pos)=115;
        [val pos]=find(tobilloT<55);
        tobilloT(1,pos)=55;
        %filtrado cadera
        [val pos]=find(caderaT>20);
        caderaT(1,pos)=20;
        [val pos]=find(caderaT<-20);
        caderaT(1,pos)=-20;
%Procesado de tacones prueba 1
caderaTa=load('Prueba1erika_AngulosCadera.mat');
rodillaTa=load('Prueba1erika_AngulosRodilla.mat');
tobilloTa=load('Prueba1erika_AngulosTobillo.mat');
tiempoTa=load('Prueba1erika_TiempoAngulos.mat');
caderaTa=struct2cell(caderaTa);
caderaTa=cell2mat(caderaTa);
rodillaTa=struct2cell(rodillaTa);
rodillaTa=cell2mat(rodillaTa);
tobilloTa=struct2cell(tobilloTa);
tobilloTa=cell2mat(tobilloTa);
tiempoTa=struct2cell(tiempoTa);
tiempoTa=cell2mat(tiempoTa);
%filtrado rodilla
[val pos]=find(rodillaTa>187);
rodillaTa(1,pos)=187;
[val pos]=find(rodillaTa<132);
rodillaTa(1,pos)=132;
%filtrado pie
[val pos]=find(tobilloTa>160);
tobilloTa(1,pos)=160;
[val pos]=find(tobilloTa<110);
tobilloTa(1,pos)=110;
%filtrado cadera
[val pos]=find(caderaTa>20);
caderaTa(1,pos)=20;
[val pos]=find(caderaTa<-20);
caderaTa(1,pos)=-20;
        %procesado de tacones prueba 2
        caderaTa2=load('Prueba2erika_AngulosCadera.mat');
        rodillaTa2=load('Prueba2erika_AngulosRodilla.mat');
        tobilloTa2=load('Prueba2erika_AngulosTobillo.mat');
        tiempoTa2=load('Prueba2erika_TiempoAngulos.mat');
        caderaTa2=struct2cell(caderaTa2);
        caderaTa2=cell2mat(caderaTa2);
        rodillaTa2=struct2cell(rodillaTa2);
        rodillaTa2=cell2mat(rodillaTa2);
        tobilloTa2=struct2cell(tobilloTa2);
        tobilloTa2=cell2mat(tobilloTa2);
        tiempoTa2=struct2cell(tiempoTa2);
        tiempoTa2=cell2mat(tiempoTa2);
        %filtrado rodilla
        [val pos]=find(rodillaTa2>187);
        rodillaTa2(1,pos)=187;
        [val pos]=find(rodillaTa2<132);
        rodillaTa2(1,pos)=132;
        %filtrado pie
        [val pos]=find(tobilloTa2>160);
        tobilloTa2(1,pos)=160;
        [val pos]=find(tobilloTa2<110);
        tobilloTa2(1,pos)=110;
        %filtrado cadera
        [val pos]=find(caderaTa2>20);
        caderaTa2(1,pos)=20;
        [val pos]=find(caderaTa2<-20);
        caderaTa2(1,pos)=-20;

figure('Name','Ericka')
subplot(2,2,1)
plot(tiempoT,caderaT,'g');
hold on
plot(tiempoT,rodillaT,'r');
plot(tiempoT,tobilloT);
legend('Cadera','Rodilla','Tobillo','Location','NorthEast')
title('Prueba 1 TENIS','FontSize',12.5);
xlabel('Tiempo','FontSize',12.5);
ylabel('Grados','FontSize',12.5)

subplot(2,2,3)
plot(tiempoTa,caderaTa,'g');
hold on
plot(tiempoTa,rodillaTa,'r');
plot(tiempoTa,tobilloTa);
legend('Cadera','Rodilla','Tobillo','Location','NorthEast')
title('Prueba 1 TACONES','FontSize',12.5);
xlabel('Tiempo','FontSize',12.5);
ylabel('Grados','FontSize',12.5)

subplot(2,2,4)
plot(tiempoTa2,caderaTa2,'g');
hold on
plot(tiempoTa2,rodillaTa2,'r');
plot(tiempoTa2,tobilloTa2);
legend('Cadera','Rodilla','Tobillo','Location','NorthEast')
title('Prueba 2 TACONES','FontSize',12.5);
xlabel('Tiempo','FontSize',12.5);
ylabel('Grados','FontSize',12.5)

