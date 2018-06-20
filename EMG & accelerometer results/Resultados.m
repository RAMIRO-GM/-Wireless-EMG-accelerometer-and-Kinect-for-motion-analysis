%% Prueba 1
%Procesado prueba 1 tenis
 Acelx=load('erika_Aceleracion_x.mat');
 Acely=load('erika_Aceleracion_y.mat');
 Acelz=load('erika_Aceleracion_z.mat');
 Emg=load('erika_EMGlectura.mat');
 tiempo=load('erika_TiempoEMG.mat');
 Acelx=struct2cell(Acelx);
 Acelx=cell2mat(Acelx);
 Acely=struct2cell(Acely);
 Acely=cell2mat(Acely);
 Acelz=struct2cell(Acelz);
 Acelz=cell2mat(Acelz);
 Emg=struct2cell(Emg);
 Emg=cell2mat(Emg);
 tiempo=struct2cell(tiempo);
 tiempo=cell2mat(tiempo);
 
 %Prueba 1 tacones
 Aceltaconx=load('erikatacones1_Aceleracion_x.mat');
 Aceltacony=load('erikatacones1_Aceleracion_y.mat');
 Aceltaconz=load('erikatacones1_Aceleracion_z.mat');
 Emgtacon=load('erikatacones1_EMGlectura.mat');
 tiempotacon=load('erikatacones1_TiempoEMG.mat');
 Aceltaconx=struct2cell(Aceltaconx);
 Aceltaconx=cell2mat(Aceltaconx);
 Aceltacony=struct2cell(Aceltacony);
 Aceltacony=cell2mat(Aceltacony);
 Aceltaconz=struct2cell(Aceltaconz);
 Aceltaconz=cell2mat(Aceltaconz);
 Emgtacon=struct2cell(Emgtacon);
 Emgtacon=cell2mat(Emgtacon);
 tiempotacon=struct2cell(tiempotacon);
 tiempotacon=cell2mat(tiempotacon);
 %Prueba 2 tacones
 Aceltaconx1=load('erikatacones2_Aceleracion_x.mat');
 Aceltacony1=load('erikatacones2_Aceleracion_y.mat');
 Aceltaconz1=load('erikatacones2_Aceleracion_z.mat');
 Emgtacon1=load('erikatacones2_EMGlectura.mat');
 tiempotacon1=load('erikatacones2_TiempoEMG.mat');
 Aceltaconx1=struct2cell(Aceltaconx1);
 Aceltaconx1=cell2mat(Aceltaconx1);
 Aceltacony1=struct2cell(Aceltacony1);
 Aceltacony1=cell2mat(Aceltacony1);
 Aceltaconz1=struct2cell(Aceltaconz1);
 Aceltaconz1=cell2mat(Aceltaconz1);
 Emgtacon1=struct2cell(Emgtacon1);
 Emgtacon1=cell2mat(Emgtacon1);
 tiempotacon1=struct2cell(tiempotacon1);
 tiempotacon1=cell2mat(tiempotacon1);
 %% Prueba 2
 %Prueba 1 tenis
 ax= load('fertenis1_Aceleracion_x.mat');
 ay=load('fertenis1_Aceleracion_y.mat');
 az=load('fertenis1_Aceleracion_z.mat');
 emgfer=load('fertenis1_EMGlectura.mat');
 tiempofer=load('fertenis1_TiempoEMG.mat');
 ax=struct2cell(ax);
 ax=cell2mat(ax);
 ay=struct2cell(ay);
 ay=cell2mat(ay);
 az=struct2cell(az);
 az=cell2mat(az);
 emgfer=struct2cell(emgfer);
 emgfer=cell2mat(emgfer);
 tiempofer=struct2cell(tiempofer);
 tiempofer=cell2mat(tiempofer);
 %Prueba 2 tenis
 ax1=load('fertenis2_Aceleracion_x.mat');
 ay1=load('fertenis2_Aceleracion_y.mat');
 az1=load('fertenis2_Aceleracion_z.mat');
 emgfer1=load('fertenis2_EMGlectura.mat');
 tiempofer1=load('fertenis2_TiempoEMG.mat');
 ax1=struct2cell(ax1);
 ax1=cell2mat(ax1);
 ay1=struct2cell(ay1);
 ay1=cell2mat(ay1);
 az1=struct2cell(az1);
 az1=cell2mat(az1);
 emgfer1=struct2cell(emgfer1);
 emgfer1=cell2mat(emgfer1);
 tiempofer1=struct2cell(tiempofer1);
 tiempofer1=cell2mat(tiempofer1);
 %Prueba 1 tacones
 axtacon=load('fertacon1_Aceleracion_x.mat');
 aytacon=load('fertacon1_Aceleracion_y.mat');
 aztacon=load('fertacon1_Aceleracion_z.mat');
 emgfertacon=load('fertacon1_EMGlectura.mat');
 tiempofertacon=load('fertacon1_TiempoEMG.mat');
 axtacon=struct2cell(axtacon);
 axtacon=cell2mat(axtacon);
 aytacon=struct2cell(aytacon);
 aytacon=cell2mat(aytacon);
 aztacon=struct2cell(aztacon);
 aztacon=cell2mat(aztacon);
 emgfertacon=struct2cell(emgfertacon);
 emgfertacon=cell2mat(emgfertacon);
 tiempofertacon=struct2cell(tiempofertacon);
 tiempofertacon=cell2mat(tiempofertacon);
 %Prueba 2 tacones
 axtacon1=load('fertacon2_Aceleracion_x.mat');
 aytacon1=load('fertacon2_Aceleracion_y.mat');
 aztacon1=load('fertacon2_Aceleracion_z.mat');
 emgfertacon1=load('fertacon2_EMGlectura.mat');
 tiempofertacon1=load('fertacon2_TiempoEMG.mat');
 axtacon1=struct2cell(axtacon1);
 axtacon1=cell2mat(axtacon1);
 aytacon1=struct2cell(aytacon1);
 aytacon1=cell2mat(aytacon1);
 aztacon1=struct2cell(aztacon1);
 aztacon1=cell2mat(aztacon1);
 emgfertacon1=struct2cell(emgfertacon1);
 emgfertacon1=cell2mat(emgfertacon1);
 tiempofertacon1=struct2cell(tiempofertacon1);
 tiempofertacon1=cell2mat(tiempofertacon1);
 %% Prueba 3
 %Prueba 1 tenis
 axKari=load('karitennis1_Aceleracion_x.mat');
 ayKari= load('karitennis1_Aceleracion_y.mat');
 azKari=load('karitennis1_Aceleracion_z.mat');
 emgKari=load('karitennis1_EMGlectura.mat');
 tiempoKari=load('karitennis1_TiempoEMG.mat');
 axKari=struct2cell(axKari);
 axKari=cell2mat(axKari);
 ayKari=struct2cell(ayKari);
 ayKari=cell2mat(ayKari);
 azKari=struct2cell(azKari);
 azKari=cell2mat(azKari);
 emgKari=struct2cell(emgKari);
 emgKari=cell2mat(emgKari);
 tiempoKari=struct2cell(tiempoKari);
 tiempoKari=cell2mat(tiempoKari);
 %prueba 2 tenis
 axKari1=load('karitennis2_Aceleracion_x.mat');
 ayKari1=load('karitennis2_Aceleracion_y.mat');
 azKari1=load('karitennis2_Aceleracion_z.mat');
 emgKari1=load('karitennis2_EMGlectura.mat');
 tiempoKari1=load('karitennis2_TiempoEMG.mat');
 axKari1=struct2cell(axKari1);
 axKari1=cell2mat(axKari1);
 ayKari1=struct2cell(ayKari1);
 ayKari1=cell2mat(ayKari1);
 azKari1=struct2cell(azKari1);
 azKari1=cell2mat(azKari1);
 emgKari1=struct2cell(emgKari1);
 emgKari1=cell2mat(emgKari1);
 tiempoKari1=struct2cell(tiempoKari1);
 tiempoKari1=cell2mat(tiempoKari1);
 %Prueba 1 tacon
 axKaritacon=load('karitacon1_Aceleracion_x.mat');
 ayKaritacon=load('karitacon1_Aceleracion_y.mat');
 azKaritacon=load('karitacon1_Aceleracion_z.mat');
 emgKaritacon=load('karitacon1_EMGlectura.mat');
 tiempoKaritacon=load('karitacon1_TiempoEMG.mat');
 axKaritacon=struct2cell(axKaritacon);
 axKaritacon=cell2mat(axKaritacon);
 ayKaritacon=struct2cell(ayKaritacon);
 ayKaritacon=cell2mat(ayKaritacon);
 azKaritacon=struct2cell(azKaritacon);
 azKaritacon=cell2mat(azKaritacon);
 emgKaritacon=struct2cell(emgKaritacon);
 emgKaritacon=cell2mat(emgKaritacon);
 tiempoKaritacon=struct2cell(tiempoKaritacon);
 tiempoKaritacon=cell2mat(tiempoKaritacon);
 %Prueba 2 tacon
 axKaritacon1=load('karitacon2_Aceleracion_x.mat');
 ayKaritacon1=load('karitacon2_Aceleracion_y.mat');
 azKaritacon1=load('karitacon2_Aceleracion_z.mat');
 emgKaritacon1=load('karitacon2_EMGlectura.mat');
 tiempoKaritacon1=load('karitacon2_TiempoEMG.mat');
 axKaritacon1=struct2cell(axKaritacon1);
 axKaritacon1=cell2mat(axKaritacon1);
 ayKaritacon1=struct2cell(ayKaritacon1);
 ayKaritacon1=cell2mat(ayKaritacon1);
 azKaritacon1=struct2cell(azKaritacon1);
 azKaritacon1=cell2mat(azKaritacon1);
 emgKaritacon1=struct2cell(emgKaritacon1);
 emgKaritacon1=cell2mat(emgKaritacon1);
 tiempoKaritacon1=struct2cell(tiempoKaritacon1);
 tiempoKaritacon1=cell2mat(tiempoKaritacon1);
 %% Prueba Janet
 %Prueba 1 tenis
 axjanet=load('Janis-tenis1_Aceleracion_x.mat');
 ayjanet=load('Janis-tenis1_Aceleracion_y.mat');
 azjanet= load('Janis-tenis1_Aceleracion_z.mat');
 emgjanet=load('Janis-tenis1_EMGlectura.mat');
 tiempojanet=load('Janis-tenis1_TiempoEMG.mat');
 axjanet=struct2cell(axjanet);
 axjanet=cell2mat(axjanet);
 ayjanet=struct2cell(ayjanet);
 ayjanet=cell2mat(ayjanet);
 azjanet=struct2cell(azjanet);
 azjanet=cell2mat(azjanet);
 emgjanet=struct2cell(emgjanet);
 emgjanet=cell2mat(emgjanet);
 tiempojanet=struct2cell(tiempojanet);
 tiempojanet=cell2mat(tiempojanet);
  %Prueba 2 tenis
 ax1janet=load('Janis-tenis2_Aceleracion_x.mat');
 ay1janet=load('Janis-tenis2_Aceleracion_y.mat');
 az1janet=load('Janis-tenis2_Aceleracion_z.mat');
 emg1janet=load('Janis-tenis2_EMGlectura.mat');
 tiempo1janet=load('Janis-tenis2_TiempoEMG.mat');
 ax1janet=struct2cell(ax1janet);
 ax1janet=cell2mat(ax1janet);
 ay1janet=struct2cell(ay1janet);
 ay1janet=cell2mat(ay1janet);
 az1janet=struct2cell(az1janet);
 az1janet=cell2mat(az1janet);
 emg1janet=struct2cell(emg1janet);
 emg1janet=cell2mat(emg1janet);
 tiempo1janet=struct2cell(tiempo1janet);
 tiempo1janet=cell2mat(tiempo1janet);
 %Prueba 1 tacon Janet
 axjanetacon=load('Janis-tacones1_Aceleracion_x.mat');
 ayjanetacon=load('Janis-tacones1_Aceleracion_y.mat');
 azjanetacon=load('Janis-tacones1_Aceleracion_z.mat');
 emgjanetacon=load('Janis-tacones1_EMGlectura.mat');
 tiempojanetacon=load('Janis-tacones1_TiempoEMG.mat');
 axjanetacon=struct2cell(axjanetacon);
 axjanetacon=cell2mat(axjanetacon);
 ayjanetacon=struct2cell(ayjanetacon);
 ayjanetacon=cell2mat(ayjanetacon);
 azjanetacon=struct2cell(azjanetacon);
 azjanetacon=cell2mat(azjanetacon);
 emgjanetacon=struct2cell(emgjanetacon);
 emgjanetacon=cell2mat(emgjanetacon);
 tiempojanetacon=struct2cell(tiempojanetacon);
 tiempojanetacon=cell2mat(tiempojanetacon);
  %Prueba 2 tacon Janet
 axjanetacon1=load('Janis-tacones2_Aceleracion_x.mat');
 ayjanetacon1=load('Janis-tacones2_Aceleracion_y.mat');
 azjanetacon1=load('Janis-tacones2_Aceleracion_z.mat');
 emgjanetacon1=load('Janis-tacones2_EMGlectura.mat');
 tiempojanetacon1=load('Janis-tacones2_TiempoEMG.mat');
 axjanetacon1=struct2cell(axjanetacon1);
 axjanetacon1=cell2mat(axjanetacon1);
 ayjanetacon1=struct2cell(ayjanetacon1);
 ayjanetacon1=cell2mat(ayjanetacon1);
 azjanetacon1=struct2cell(azjanetacon1);
 azjanetacon1=cell2mat(azjanetacon1);
 emgjanetacon1=struct2cell(emgjanetacon1);
 emgjanetacon1=cell2mat(emgjanetacon1);
 tiempojanetacon1=struct2cell(tiempojanetacon1);
 tiempojanetacon1=cell2mat(tiempojanetacon1);
 %% Gráficas
 %% Prueba 1 Erika
 %Prueba 1 tenis Erika
 figure (1)
 subplot(3,2,1);
 plot(tiempo,Acelx,'r');
 hold on
 plot(tiempo,Acely,'g');
 hold on
 plot(tiempo,Acelz,'b');
 title('Prueba 1 tenis Erika Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(3,2,2);
 plot(tiempo,Emg);
 title('Prueba 1 tenis Erika Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
%Prueba 1 tacon 
 subplot(3,2,3)
 plot(tiempotacon,Aceltaconx,'r');
 hold on
 plot(tiempotacon,Aceltacony,'g');
  hold on
 plot(tiempotacon,Aceltaconz,'b');
 title('Prueba 1 tacón 11cm Erika Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(3,2,4);
 plot(tiempotacon,Emgtacon);
 title('Prueba 1 tacón 11cm Erika Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
 %Prueba 2 tacon
 subplot(3,2,5)
 plot(tiempotacon1,Aceltaconx1,'r');
 hold on
 plot(tiempotacon1,Aceltacony1,'g');
  hold on
 plot(tiempotacon1,Aceltaconz1,'b');
 title('Prueba 2 tacón 11cm Erika Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(3,2,6);
 plot(tiempotacon1,Emgtacon1);
 title('Prueba 2 tacón Erika 11cm Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
 %% Prueba 2 Fer
  %Prueba 1 tenis Fer
 figure (2)
 subplot(4,2,1);
 plot(tiempofer,ax,'r');
 hold on
 plot(tiempofer,ay,'g');
 hold on
 plot(tiempofer,az,'b');
 title('Prueba 1 tenis Fer Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,2);
 plot(tiempofer,emgfer);
 title('Prueba 1 tenis Fer Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
   %Prueba 2 tenis Fer
 subplot(4,2,3);
 plot(tiempofer1,ax1,'r');
 hold on
 plot(tiempofer1,ay1,'g');
 hold on
 plot(tiempofer1,az1,'b');
 title('Prueba 2 tenis Fer Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,4);
 plot(tiempofer1,emgfer1);
 title('Prueba 2 tenis Fer Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
%Prueba 1 tacon 
 subplot(4,2,5)
 plot(tiempofertacon,axtacon,'r');
 hold on
 plot(tiempofertacon,aytacon,'g');
  hold on
 plot(tiempofertacon,aztacon,'b');
 title('Prueba 1 tacón 10cm Fer Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,6);
 plot(tiempofertacon,emgfertacon);
 title('Prueba 1 tacón 10cm Fer Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
 %Prueba 2 tacon 
 subplot(4,2,7)
 plot(tiempofertacon1,axtacon1,'r');
 hold on
 plot(tiempofertacon1,aytacon1,'g');
  hold on
 plot(tiempofertacon1,aztacon1,'b');
 title('Prueba 2 tacón Fer 10cm Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,8);
 plot(tiempofertacon1,emgfertacon1);
 title('Prueba 2 tacón Fer 10cm Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
 %% Prueba 3 Kari
   %Prueba 1 tenis
 figure (3)
 subplot(4,2,1);
 plot(tiempoKari,axKari,'r');
 hold on
 plot(tiempoKari,ayKari,'g');
 hold on
 plot(tiempoKari,azKari,'b');
 title('Prueba 1 tenis Kari Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,2);
 plot(tiempoKari,emgKari);
 title('Prueba 1 tenis Kari Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');
    %Prueba 2 tenis
 subplot(4,2,3);
 plot(tiempoKari1,axKari1,'r');
 hold on
 plot(tiempoKari1,ayKari1,'g');
 hold on
 plot(tiempoKari1,azKari1,'b');
 title('Prueba 2 tenis Kari Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,4);
 plot(tiempoKari1,emgKari1);
 title('Prueba 2 tenis Kari Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
    %Prueba 1 tacon
 subplot(4,2,5);
 plot(tiempoKaritacon,axKaritacon,'r');
 hold on
 plot(tiempoKaritacon,ayKaritacon,'g');
 hold on
 plot(tiempoKaritacon,azKaritacon,'b');
 title('Prueba 1 tacón 12cm Kari Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,6);
 plot(tiempoKaritacon,emgKaritacon);
 title('Prueba 1 tacón 12cm Kari Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
   %Prueba 2 tacon
 subplot(4,2,7);
 plot(tiempoKaritacon1,axKaritacon1,'r');
 hold on
 plot(tiempoKaritacon1,ayKaritacon1,'g');
 hold on
 plot(tiempoKaritacon1,azKaritacon1,'b');
 title('Prueba 2 tacón Kari 12cm Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,8);
 plot(tiempoKaritacon1,emgKaritacon1);
 title('Prueba 2 tacón Kari 12cm Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
 %% Prueba 4 Janeth
    %Prueba 1 tenis
 figure (4)
 subplot(4,2,1);
 plot(tiempojanet,axjanet,'r');
 hold on
 plot(tiempojanet,ayjanet,'g');
 hold on
 plot(tiempojanet,azjanet,'b');
 title('Prueba 1 tenis Janet Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,2);
 plot(tiempojanet,emgjanet);
 title('Prueba 1 tenis Janet Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
    %Prueba 2 tenis
 subplot(4,2,3);
 plot(tiempojanet,ax1janet,'r');
 hold on
 plot(tiempo1janet,ay1janet,'g');
 hold on
 plot(tiempo1janet,az1janet,'b');
 title('Prueba 2 tenis Janet Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,4);
 plot(tiempo1janet,emg1janet);
 title('Prueba 2 tenis Janet Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
     %Prueba 1 tacon
 subplot(4,2,5);
 plot(tiempojanetacon,axjanetacon,'r');
 hold on
 plot(tiempojanetacon,ayjanetacon,'g');
 hold on
 plot(tiempojanetacon,azjanetacon,'b');
 title('Prueba 1 tacón Janet 10cm Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
  xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,6);
 plot(tiempojanetacon,emgjanetacon);
 title('Prueba 1 tacón Janet 10cm Emg','FontSize',14);
  xlabel('Tiempo (s)');
 ylabel('uV');
      %Prueba 2 tacon
 subplot(4,2,7);
 plot(tiempojanetacon1,axjanetacon1,'r');
 hold on
 plot(tiempojanetacon1,ayjanetacon1,'g');
 hold on
 plot(tiempojanetacon1,azjanetacon1,'b');
 title('Prueba 2 tacón Janet 10cm Aceleración','FontSize',14);
 legend('Acel x','Acel y', 'Acel z');
 xlabel('Tiempo (s)');
 ylabel('Aceleración (m/s^2)');
 subplot(4,2,8);
 plot(tiempojanetacon1,emgjanetacon1);
 title('Prueba 2 tacón Janet 10cm Emg','FontSize',14);
 xlabel('Tiempo (s)');
 ylabel('uV');