function varargout = Analisis(varargin)
% ANALISIS MATLAB code for Analisis.fig
%      ANALISIS, by itself, creates a new ANALISIS or raises the existing
%      singleton*.
%
%      H = ANALISIS returns the handle to a new ANALISIS or the handle to
%      the existing singleton*.
%
%      ANALISIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALISIS.M with the given input arguments.
%
%      ANALISIS('Property','Value',...) creates a new ANALISIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Analisis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Analisis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Analisis

% Last Modified by GUIDE v2.5 15-May-2015 13:00:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Analisis_OpeningFcn, ...
                   'gui_OutputFcn',  @Analisis_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Analisis is made visible.
function Analisis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Analisis (see VARARGIN)

% Choose default command line output for Analisis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set([handles.pushbutton7 handles.pushbutton6],'BackgroundColor',[.92 .92 .92],'enable','off');
set([handles.pushbutton5 handles.pushbutton2 handles.pushbutton3 handles.pushbutton4 handles.pushbutton8 ],'BackgroundColor',[.92 .92 .92],'enable','off');
set(handles.pushbutton9,'BackgroundColor','red','enable','off');
set([handles.axes1 handles.axes6 handles.axes7 handles.axes3 handles.axes4 handles.axes5],'visible','off') %hide the current axes
cla

% UIWAIT makes Analisis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Analisis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%BOTON ACELEROMETRO
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global botonControl p a t_acelerometro ax ay az n tiempo_aceleracion...
    frecuencia_aceleracion aceleracion_y tiempoRamiro aceleracion_x...
    aceleracion_z TiempoGuardarAceleracion
botonControl=1;
p=1;
set(handles.pushbutton4,'BackgroundColor','green','enable','off');
set([handles.pushbutton5 handles.pushbutton2 handles.pushbutton3],'enable','off');
set(handles.pushbutton6,'BackgroundColor','red','enable','on');
set(handles.pushbutton7,'BackgroundColor',[1 .69 .39],'enable','on');
set([handles.axes4 handles.axes6 handles.axes7 handles.axes3 handles.axes5],'visible','off') %hide the current axes
cla
axes(handles.axes5)
cla
set(handles.axes1,'visible','on');

% % % % while(p)
% % % %     tic
% % % %     %configuracion pin 52 de salida en alto digital
% % % %     a.pinMode(52,'output');
% % % %     a.digitalWrite(52,1);
% % % %     %lectura analogica de los ejes XYZ del acelerometro
% % % %     sensorValueAx=a.analogRead(1);
% % % %     sensorValueAy=a.analogRead(2);
% % % %     sensorValueAz=a.analogRead(3);
% % % %     %Voltaje en acelerometro eje X,Y,Z
% % % %     Ax=(sensorValueAx*5)/1023;
% % % %     Ay=(sensorValueAy*5)/1023;
% % % %     Az=(sensorValueAz*5)/1023;
% % % %     %Conversion de fuerzas g a aceleracion
% % % %     Axg=((Ax-1.65)/.8)*9.81;
% % % %     Ayg=((Ay-1.65)/.8)*9.81;
% % % %     Azg=((Az-1.65)/.8)*9.81;
% % % % %Almacenamiento de datos
% % % % t_acelerometro(n)=tiempo_aceleracion;
% % % % ax(n)=Axg;
% % % % ay(n)=Ayg;
% % % % az(n)=Azg;
% % % % format bank, Axg;
% % % % format bank, Ayg;
% % % % format bank, Azg;
% % % % n=n+1;
% % % % %SELECCION DE GRAFICA DE DESTINO DE DATOS
% % % % axes(handles.axes1);
% % % % plot(t_acelerometro,ax,'b');
% % % % hold on
% % % % plot(t_acelerometro,ay,'r');
% % % % plot(t_acelerometro,az,'g');
% % % % xlabel('Tiempo (s)')
% % % % ylabel('Aceleracion (m/s^2')
% % % % title('ACELERACION')
% % % % drawnow
% % % % t1=toc;
% % % %         tiempo_aceleracion=tiempo_aceleracion+t1;
% % % % frecuencia_aceleracion=n/tiempo_aceleracion;
% % % % tiempoRamiro=t_acelerometro(1,:);
% % % % aceleracion_y=ay(1,:);
% % % % aceleracion_x=ax(1,:);
% % % % aceleracion_z=az(1,:);
% % % % TiempoGuardarAceleracion=t_acelerometro(1,:);
% % % % %MUESTRA DE LOS RESULTADOS
% % % % set(handles.text2,'string',frecuencia_aceleracion);
% % % % set(handles.text20,'string',Axg);
% % % % set(handles.text22,'string',Ayg);
% % % % set(handles.text23,'string',Azg);
% % % %    set(handles.text39,'string',tiempo_aceleracion);
% % % % end


%BOTON GONIOMETRO
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global botonControl p tiempo_goniometro n AtrainData GradosCaderaGuardar GradosRodillaGuardar...
skl t_angulos cadera rodilla vid2 tobillo GradosTobilloGuardar frecuencia_angulos...
TiempoAngulosGuardar
p=1;
botonControl=2;
            %Habilitacion y deshabilitacion de axes y botones en guide
            set(handles.pushbutton2,'BackgroundColor','green','enable','off');
            set([handles.pushbutton4 handles.pushbutton5 handles.pushbutton3],'enable','off');
            set(handles.pushbutton6,'BackgroundColor','red','enable','on');
            set(handles.pushbutton7,'BackgroundColor',[1 .69 .39],'enable','on');
            set([handles.axes1 handles.axes3 handles.axes6 handles.axes7],'visible','off') %hide the current axes
            cla
            set([handles.axes4 handles.axes5],'visible','on');

% % % % % %Inicializa camara de profuncidad del kinect
% % % % % start(vid2);
% % % % % %Ciclo infinito para ejecucion de guide
% % % % % while(p)
% % % % %     tic
% % % % %      trigger(vid2)
% % % % %     [imgDepthAll, ts_depthAll, metaData_DepthAll ] = getdata(vid2);
% % % % %             
% % % % %             metaData_Depth=metaData_DepthAll(1);
% % % % %         if any(metaData_Depth.IsPositionTracked)==0
% % % % %             else
% % % % %                 skl=find(metaData_Depth.IsPositionTracked);
% % % % %                 jointCoordinates = metaData_Depth.JointWorldCoordinates(:, :, skl(1));
% % % % % 
% % % % %                 data=[jointCoordinates(1,:)];
% % % % %                 for j=2:20,
% % % % %                     data=[data jointCoordinates(j,:)];
% % % % %                 end
% % % % %                 axes(handles.axes5);
% % % % % % %                     for x=1:20
% % % % % % %                          plot3(jointCoordinates(x,1,1),jointCoordinates(x,3,1),jointCoordinates(x,2,1));
% % % % % % %                          hold on
% % % % % % %                     end
% % % % % % %   
% % % % % % %                  axis equal
% % % % % % %                  set(gca,'XLim',[-2 2],'YLim',[-1 5],'ZLim',[-1.5 1.5])
% % % % % % %                     line([jointCoordinates(1,1,1),jointCoordinates(2,1,1)],[jointCoordinates(1,3,1),jointCoordinates(2,3,1)],[jointCoordinates(1,2,1),jointCoordinates(2,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(2,1,1),jointCoordinates(3,1,1)],[jointCoordinates(2,3,1),jointCoordinates(3,3,1)],[jointCoordinates(2,2,1),jointCoordinates(3,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(3,1,1),jointCoordinates(4,1,1)],[jointCoordinates(3,3,1),jointCoordinates(4,3,1)],[jointCoordinates(3,2,1),jointCoordinates(4,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(3,1,1),jointCoordinates(5,1,1)],[jointCoordinates(3,3,1),jointCoordinates(5,3,1)],[jointCoordinates(3,2,1),jointCoordinates(5,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(5,1,1),jointCoordinates(6,1,1)],[jointCoordinates(5,3,1),jointCoordinates(6,3,1)],[jointCoordinates(5,2,1),jointCoordinates(6,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(6,1,1),jointCoordinates(7,1,1)],[jointCoordinates(6,3,1),jointCoordinates(7,3,1)],[jointCoordinates(6,2,1),jointCoordinates(7,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(7,1,1),jointCoordinates(8,1,1)],[jointCoordinates(7,3,1),jointCoordinates(8,3,1)],[jointCoordinates(7,2,1),jointCoordinates(8,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(3,1,1),jointCoordinates(9,1,1)],[jointCoordinates(3,3,1),jointCoordinates(9,3,1)],[jointCoordinates(3,2,1),jointCoordinates(9,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(9,1,1),jointCoordinates(10,1,1)],[jointCoordinates(9,3,1),jointCoordinates(10,3,1)],[jointCoordinates(9,2,1),jointCoordinates(10,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(10,1,1),jointCoordinates(11,1,1)],[jointCoordinates(10,3,1),jointCoordinates(11,3,1)],[jointCoordinates(10,2,1),jointCoordinates(11,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(11,1,1),jointCoordinates(12,1,1)],[jointCoordinates(11,3,1),jointCoordinates(12,3,1)],[jointCoordinates(11,2,1),jointCoordinates(12,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(1,1,1),jointCoordinates(13,1,1)],[jointCoordinates(1,3,1),jointCoordinates(13,3,1)],[jointCoordinates(1,2,1),jointCoordinates(13,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(13,1,1),jointCoordinates(14,1,1)],[jointCoordinates(13,3,1),jointCoordinates(14,3,1)],[jointCoordinates(13,2,1),jointCoordinates(14,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(14,1,1),jointCoordinates(15,1,1)],[jointCoordinates(14,3,1),jointCoordinates(15,3,1)],[jointCoordinates(14,2,1),jointCoordinates(15,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(15,1,1),jointCoordinates(16,1,1)],[jointCoordinates(15,3,1),jointCoordinates(16,3,1)],[jointCoordinates(15,2,1),jointCoordinates(16,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(1,1,1),jointCoordinates(17,1,1)],[jointCoordinates(1,3,1),jointCoordinates(17,3,1)],[jointCoordinates(1,2,1),jointCoordinates(17,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(17,1,1),jointCoordinates(18,1,1)],[jointCoordinates(17,3,1),jointCoordinates(18,3,1)],[jointCoordinates(17,2,1),jointCoordinates(18,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(18,1,1),jointCoordinates(19,1,1)],[jointCoordinates(18,3,1),jointCoordinates(19,3,1)],[jointCoordinates(18,2,1),jointCoordinates(19,2,1)],'LineWidth',3);
% % % % % % %                     line([jointCoordinates(19,1,1),jointCoordinates(20,1,1)],[jointCoordinates(19,3,1),jointCoordinates(20,3,1)],[jointCoordinates(19,2,1),jointCoordinates(20,2,1)],'LineWidth',3);
% % % % % % %              hold off
% % % % %              %obtencion de angulos
% % % % %                            gradosCadera=atand((jointCoordinates(18,1,1)-jointCoordinates(17,1,1))/(jointCoordinates(18,2,1)-jointCoordinates(17,2,1)));
% % % % %                            gradosR=atand((jointCoordinates(19,1,1)-jointCoordinates(18,1,1))/(jointCoordinates(19,2,1)-jointCoordinates(18,2,1)));
% % % % %                            gradosRodilla=(180-(gradosCadera+90))+90+gradosR;
% % % % %                            gradosT=atand((jointCoordinates(20,2,1)-jointCoordinates(19,2,1))/(jointCoordinates(20,1,1)-jointCoordinates(19,1,1)));
% % % % %                            gradosTobillo=(gradosT*90)/50;
% % % % %                                 %Define los valores en un vector actual
% % % % %                                 %para graficarlo
% % % % %                                 t_angulos(n)=tiempo_goniometro;
% % % % %                                 cadera(n)=gradosCadera;
% % % % %                                 rodilla(n)=gradosRodilla;
% % % % %                                 tobillo(n)=gradosTobillo;
% % % % %                                 n=n+1;
% % % % %                         axes(handles.axes4);
% % % % %                                 plot(t_angulos,cadera,'green');
% % % % %                                 hold on
% % % % %                                 plot(t_angulos,rodilla,'r');
% % % % %                                 plot(t_angulos,tobillo,'b');
% % % % %                                 xlabel('Tiempo (s)')
% % % % %                                 ylabel('Grados')
% % % % %                                 title('Goniometro')
% % % % %                                 drawnow
% % % % %                                     tiempo_goniometro=tiempo_goniometro+toc;
% % % % %                                     frecuencia_angulos=n/tiempo_goniometro;
% % % % %                                         AtrainData=cat(1, AtrainData, data);
% % % % %                                         GradosCaderaGuardar=cadera(1,:);
% % % % %                                         GradosRodillaGuardar=rodilla(1,:);
% % % % %                                         GradosTobilloGuardar=tobillo(1,:);
% % % % %                                         TiempoAngulosGuardar=t_angulos(1,:);
% % % % %                                 set(handles.text3,'string',frecuencia_angulos);       
% % % % %                                 set(handles.text13,'string',gradosCadera);
% % % % %                                 set(handles.text14,'string',gradosRodilla);
% % % % %                                 set(handles.text15,'string',gradosTobillo);
% % % % %                                 set(handles.text39,'string',tiempo_goniometro);
% % % % %         end
% % % % % end


%EMG y Acelerometro
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global botonControl  p  lectura_emg t_emg tiempo_emg tiempoTotalEMG...
    lecturaTotalEMG n frecuencia_EMG a t_acelerometro ax ay az tiempo_aceleracion...
    frecuencia_aceleracion aceleracion_y tiempoRamiro aceleracion_x...
    aceleracion_z TiempoGuardarAceleracion
botonControl=3;
% % % p=1;
set(handles.pushbutton5,'BackgroundColor','green','enable','off');
set([handles.pushbutton4 handles.pushbutton2 handles.pushbutton3],'enable','off');
set(handles.pushbutton6,'BackgroundColor','red','enable','on');
set(handles.pushbutton7,'BackgroundColor',[1 .69 .39],'enable','on');
set([handles.axes1 handles.axes4 handles.axes3 handles.axes5],'visible','off') %hide the current axes
cla
axes(handles.axes5)
cla
set([handles.axes6 handles.axes7],'visible','on');
% % % % % while(p)
% % % % %     tic
% % % % % %lectura emg
% % % % % lecturaEMG=a.analogRead(0);
% % % % % lectura_emg(n)=lecturaEMG;
% % % % % t_emg(n)=tiempo_emg;
% % % % %             %lectura acelerometro
% % % % %              %configuracion pin 52 de salida en alto digital
% % % % %             a.pinMode(52,'output');
% % % % %             a.digitalWrite(52,1);
% % % % %             %lectura analogica de los ejes XYZ del acelerometro
% % % % %             sensorValueAx=a.analogRead(1);
% % % % %             sensorValueAy=a.analogRead(2);
% % % % %             sensorValueAz=a.analogRead(3);
% % % % %             %Voltaje en acelerometro eje X,Y,Z
% % % % %             Ax=(sensorValueAx*5)/1023;
% % % % %             Ay=(sensorValueAy*5)/1023;
% % % % %             Az=(sensorValueAz*5)/1023;
% % % % %             %Conversion de fuerzas g a aceleracion
% % % % %             Axg=((Ax-1.65)/.8)*9.81;
% % % % %             Ayg=((Ay-1.65)/.8)*9.81;
% % % % %             Azg=((Az-1.65)/.8)*9.81;
% % % % %             t_acelerometro(n)=tiempo_aceleracion;
% % % % %             ax(n)=Axg;
% % % % %             ay(n)=Ayg;
% % % % %             az(n)=Azg;
% % % % %             format bank, Axg;
% % % % %             format bank, Ayg;
% % % % %             format bank, Azg;
% % % % %     n=n+1;
% % % % % axes(handles.axes6)
% % % % % plot(t_emg,lectura_emg);
% % % % % xlabel('Tiempo');
% % % % % ylabel('Voltaje');
% % % % % title('EMG');
% % % % % drawnow
% % % % %             axes(handles.axes7);
% % % % %             plot(t_acelerometro,ax,'b');
% % % % %             hold on
% % % % %             plot(t_acelerometro,ay,'r');
% % % % %             plot(t_acelerometro,az,'g');
% % % % %             xlabel('Tiempo (s)')
% % % % %             ylabel('Aceleracion (m/s^2')
% % % % %             title('ACELERACION')
% % % % %             drawnow
% % % % %     tiempoEMG=toc;
% % % % %     %tiempo emg
% % % % %     tiempo_emg=tiempo_emg+tiempoEMG;
% % % % %     %Tiempo aceleracion
% % % % %     tiempo_aceleracion=tiempo_aceleracion+tiempoEMG;
% % % % %     %Datos emg
% % % % %     frecuencia_EMG=n/tiempo_emg;
% % % % %     tiempoTotalEMG=t_emg(1,:);
% % % % %     lecturaTotalEMG=lectura_emg(1,:);
% % % % %     %datos acelerometro
% % % % %     tiempoRamiro=t_acelerometro(1,:);
% % % % %     aceleracion_y=ay(1,:);
% % % % %     aceleracion_x=ax(1,:);
% % % % %     aceleracion_z=az(1,:);
% % % % %     set(handles.text5,'string',frecuencia_EMG);
% % % % %     set(handles.text39,'string',tiempo_emg);
% % % % %     %MUESTRA DE LOS RESULTADOS
% % % % %     set(handles.text20,'string',Axg);
% % % % %     set(handles.text22,'string',Ayg);
% % % % %     set(handles.text23,'string',Azg);
% % % % % end

%BOTON EMG
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global botonControl p  lectura_emg t_emg tiempo_emg tiempoTotalEMG...
    lecturaTotalEMG n frecuencia_EMG a
botonControl=4;
p=1;
set(handles.pushbutton3,'BackgroundColor','green','enable','off');
set([handles.pushbutton4 handles.pushbutton2 handles.pushbutton5],'enable','off');
set(handles.pushbutton6,'BackgroundColor','red','enable','on');
set(handles.pushbutton7,'BackgroundColor',[1 .69 .39],'enable','on');
set([handles.axes1 handles.axes6 handles.axes7 handles.axes4 handles.axes5],'visible','off') %hide the current axes
cla
axes(handles.axes5)
cla
set(handles.axes3,'visible','on');

% % % % while(p)
% % % %     tic
% % % %     lecturaEMG=a.analogRead(0);
% % % %     lectura_emg(n)=lecturaEMG;
% % % %     t_emg(n)=tiempo_emg;
% % % %     n=n+1;
% % % %     axes(handles.axes3)
% % % %     plot(t_emg,lectura_emg);
% % % %     xlabel('Tiempo');
% % % %     ylabel('Voltaje');
% % % %     title('EMG');
% % % %     drawnow
% % % %     tiempoEMG=toc;
% % % %     tiempo_emg=tiempo_emg+tiempoEMG;
% % % %     frecuencia_EMG=n/tiempo_emg;
% % % %     tiempoTotalEMG=t_emg(1,:);
% % % %     lecturaTotalEMG=lectura_emg(1,:);
% % % %     set(handles.text4,'string',frecuencia_EMG);
% % % %        set(handles.text39,'string',tiempo_emg);
% % % % end


%BOTON GUARDAR ANALISIS
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global AtrainData GradosRodillaGuardar GradosCaderaGuardar GradosTobilloGuardar
global nombre TiempoAngulosGuardar aceleracion_y aceleracion_x...
    aceleracion_z TiempoGuardarAceleracion tiempoTotalEMG...
    lecturaTotalEMG
global botonControl
nombre=get(handles.edit2,'String'); 
% % set(gcf,'PaperPositionMode','auto')
% % print(Analisis,'-r700', '-djpeg', nombre);
switch botonControl
    case 1
% % % %         save([nombre '_Aceleracion_y.mat'],'aceleracion_y','-mat');
% % % %         save([nombre '_Aceleracion_x.mat'],'aceleracion_x','-mat');
% % % %         save([nombre '_Aceleracion_z.mat'],'aceleracion_z','-mat');
% % % %         save([nombre '_TiempoAceleracion.mat'],'TiempoGuardarAceleracion','-mat');
    case 2
% % % %         save([nombre '_Datos.mat'],'AtrainData','-mat');
% % % %         save([nombre '_AngulosCadera.mat'],'GradosCaderaGuardar','-mat');
% % % %         save([nombre '_AngulosRodilla.mat'],'GradosRodillaGuardar','-mat');
% % % %         save([nombre '_AngulosTobillo.mat'],'GradosTobilloGuardar','-mat');
% % % %         save([nombre '_TiempoAngulos.mat'],'TiempoAngulosGuardar','-mat');
    case 3
% % % %         save([nombre '_Aceleracion_y.mat'],'aceleracion_y','-mat');
% % % %         save([nombre '_Aceleracion_x.mat'],'aceleracion_x','-mat');
% % % %         save([nombre '_Aceleracion_z.mat'],'aceleracion_z','-mat');
% % % %         save([nombre '_TiempoEMG.mat'],'tiempoTotalEMG','-mat');
% % % %         save([nombre '_EMGlectura.mat'],'lecturaTotalEMG','-mat');
    case 4
% % % %         save([nombre '_TiempoEMG.mat'],'tiempoTotalEMG','-mat');
% % % %         save([nombre '_EMGlectura.mat'],'lecturaTotalEMG','-mat');
end

%BOTON 'PAUSAR'
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global botonControl vid2 p tiempoRamiro aceleracion_y 
global aceleracionPromedio velocidadMedia distancia
% % % % stop(vid2);
switch botonControl
    case 1 
        set(handles.pushbutton4,'BackgroundColor',[.92 .92 .92],'enable','on');
         set([handles.pushbutton5 handles.pushbutton2 handles.pushbutton3],'enable','on');
% % % %                 aceleracionPromedio=mean(aceleracion_y);
% % % %                 velocidadMedia=aceleracionPromedio*tiempoRamiro(end);
% % % %                 distancia=.5*(aceleracionPromedio*(tiempoRamiro(end))^2);
% % % %                 set(handles.text32,'string',aceleracionPromedio);
% % % %                 set(handles.text33,'string',velocidadMedia);
% % % %                 set(handles.text34,'string',distancia);
    case 2
        set(handles.pushbutton2,'BackgroundColor',[.92 .92 .92],'enable','on');
         set([handles.pushbutton4 handles.pushbutton5 handles.pushbutton3],'enable','on');
    case 3
        set(handles.pushbutton5,'BackgroundColor',[.92 .92 .92],'enable','on');
         set([handles.pushbutton4 handles.pushbutton2 handles.pushbutton3],'enable','on');
    case 4
         set(handles.pushbutton3,'BackgroundColor',[.92 .92 .92],'enable','on');
         set([handles.pushbutton4 handles.pushbutton2 handles.pushbutton5],'enable','on');  
end
set(handles.pushbutton6,'BackgroundColor',[.92 .92 .92],'enable','off');
% % % p=0;

%BOTON RESTAURAR
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set([handles.pushbutton7 handles.pushbutton6],'BackgroundColor',[.92 .92 .92],'enable','off');
set([handles.pushbutton5 handles.pushbutton2 handles.pushbutton3 handles.pushbutton4],'BackgroundColor',[.92 .92 .92],'enable','on');
set([handles.axes1 handles.axes4 handles.axes3 handles.axes6 handles.axes7 handles.axes5],'visible','off')
cla
axes(handles.axes6)
cla
global skl AtrainData tiempo_goniometro t_angulos cadera rodilla tobillo n 
global t_acelerometro tiempo_aceleracion frecuencia_aceleracion...
    ax ay az aceleracionPromedio velocidadMedia distancia frecuencia_angulos...
      lectura_emg t_emg tiempo_emg frecuencia_EMG
%Restauracion de variables kinect
                skl=[];
                AtrainData={};
                tiempo_goniometro=0;
                t_angulos=[];
                cadera=[];
                rodilla=[];
                tobillo=[];
                n=1;
                frecuencia_angulos=0;
%Restauracion acelerometro
                t_acelerometro=[];
                ax=[];
                ay=[];
                az=[];
                tiempo_aceleracion=0;
                frecuencia_aceleracion=0;
%Restauracion de datos promedio
                aceleracionPromedio=0;
                velocidadMedia=0;
                distancia=0;
                frecuencia_EMG=0;
%Restauracion de emg
                lectura_emg=[];
                t_emg=[];
                tiempo_emg=0;
set([handles.text39 handles.text34 handles.text33 handles.text32 handles.text4 handles.text3...
    handles.text13 handles.text14 handles.text15 handles.text2 handles.text20 handles.text22...
    handles.text23],'string',tiempo_emg);


%BOTON CONEXION
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a com str variable skl AtrainData tiempo_goniometro t_angulos cadera rodilla tobillo n...
 vid2 frecuencia_EMG
global t_acelerometro ax ay az tiempo_aceleracion frecuencia_aceleracion
global aceleracionPromedio velocidadMedia distancia frecuencia_angulos...
    lectura_emg t_emg tiempo_emg

       %inicializacion variables kinect
                skl=[];
                AtrainData={};
                tiempo_goniometro=0;
                t_angulos=[];
                cadera=[];
                rodilla=[];
                tobillo=[];
                n=1;
                frecuencia_angulos=0;
        %inicializacion acelerometro
% % % %                 t_acelerometro=[];
% % % %                 ax=[];
% % % %                 ay=[];
% % % %                 az=[];
% % % %                 tiempo_aceleracion=0;
% % % %                 frecuencia_aceleracion=0;
        %Inicializacion EMG
% % % %                 lectura_emg=[];
% % % %                 t_emg=[];
% % % %                 tiempo_emg=0;
% % % %                 frecuencia_EMG=0;
        %Inicializacion de datos promedio
% % % %                 aceleracionPromedio=0;
% % % %                 velocidadMedia=0;
% % % %                 distancia=0;
        %CONEXION ARDUINO
% % % %                 com=get(handles.edit1,'String');
% % % %                 str='COM';
% % % %                 variable=[str num2str(com)];
% % % %                 a=arduino(variable);
        %CONEXION KINECT
% % % %                 utilpath = fullfile(matlabroot, 'toolbox', 'imaq', 'imaqdemos', ...
% % % %                 'html', 'KinectForWindows');
% % % %                 addpath(utilpath);
% % % %                 vid2 = videoinput('kinect',2); % Depth camera
% % % %                 srcDepth = getselectedsource(vid2);
% % % %                 set(srcDepth, 'TrackingMode', 'Skeleton')
% % % %                 set(srcDepth, 'BodyPosture', 'Standing')
% % % %                 fnum=1000;
% % % %                 vid2.FramesPerTrigger = 1;
% % % %                 vid2.TriggerRepeat = fnum;
% % % %                 triggerconfig(vid2,'manual'); 
set(handles.pushbutton1,'BackgroundColor',[.92 .92 .92],'enable','off');
set([handles.pushbutton5 handles.pushbutton2 handles.pushbutton3 handles.pushbutton4 handles.pushbutton8],'BackgroundColor',[.92 .92 .92],'enable','on');
set(handles.pushbutton9,'BackgroundColor','red','enable','on');
set(handles.text30,'string','Conectado!','BackgroundColor','green');

%BOTON DESCONECTAR
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid2
set(handles.text30,'string','Desconectado!','BackgroundColor','red');
set([handles.pushbutton7 handles.pushbutton6],'BackgroundColor',[.92 .92 .92],'enable','off');
set([handles.pushbutton5 handles.pushbutton2 handles.pushbutton3 handles.pushbutton4 handles.pushbutton8 ],'BackgroundColor',[.92 .92 .92],'enable','off');
set(handles.pushbutton9,'BackgroundColor','red','enable','off');
set(handles.pushbutton1,'BackgroundColor',[.92 .92 .92],'enable','on');
set([handles.axes1 handles.axes4 handles.axes3 handles.axes6 handles.axes7 handles.axes5],'visible','off') %hide the current axes
% % % cla
% % % axes(handles.axes5);
% % % cla
% % % axes(handles.axes6);
% % % cla
% % % stop(vid2);
pause(1);
set(handles.text30,'string','Conexion...','BackgroundColor',[.31 .31 .31]);
clc
clear all

                               
function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
