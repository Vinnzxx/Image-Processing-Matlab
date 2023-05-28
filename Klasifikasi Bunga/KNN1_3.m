function varargout = KNN1_3(varargin)
% KNN1_3 MATLAB code for KNN1_3.fig
%      KNN1_3, by itself, creates a new KNN1_3 or raises the existing
%      singleton*.
%
%      H = KNN1_3 returns the handle to a new KNN1_3 or the handle to
%      the existing singleton*.
%
%      KNN1_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KNN1_3.M with the given input arguments.
%
%      KNN1_3('Property','Value',...) creates a new KNN1_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KNN1_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KNN1_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KNN1_3

% Last Modified by GUIDE v2.5 11-Oct-2022 07:49:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KNN1_3_OpeningFcn, ...
                   'gui_OutputFcn',  @KNN1_3_OutputFcn, ...
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


% --- Executes just before KNN1_3 is made visible.
function KNN1_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KNN1_3 (see VARARGIN)

% Choose default command line output for KNN1_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KNN1_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KNN1_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file, folder] = uigetfile('*.jpg');

if ~isequal(file,0)
    img = im2double(imread(fullfile(folder, file)));
    %menampilkan citra rgb pada axes1
    axes(handles.axes1);
    imshow(img), title('RGB Images')
    %menampilkan nama file pada edit text
    set(handles.edit1,'String',file);
    %menyimpan variabel img pada lokasi handles agar dapat dipanggil oleh
    %push button lain (public)
    handles.img = img;
    guidata(hObject, handles)

    %morfologi
    img_gray = rgb2gray(img);
    se = strel('diamond', 4)
    dil = imdilate(img_gray, se);
    bw = imbinarize(dil);

    R=imhist(img(:,:,1)); 
    G=imhist(img(:,:,2)); 
    B=imhist(img(:,:,3)); 
    axes(handles.axes10)
    plot(R,'r') 
    hold on, 
    plot(G,'g') 
    plot(B,'b')
    legend('Red','Green','Blue');
    hold off

    %ekstraksi ciri
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    %menghitung rata" nilai per komponen
    Red = sum(sum(R))/sum(sum(bw));
    Green = sum(sum(G))/sum(sum(bw));
    Blue = sum(sum(B))/sum(sum(bw));

    set(handles.edit3,'String',Red);
    set(handles.edit6,'String',Green);
    set(handles.edit7,'String',Blue);

    data_RGB = [Red, Green, Blue];
    handles.data_RGB = data_RGB;
    guidata(hObject,handles)
else
    return
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    img = handles.img;

    %morfologi
    img_gray = rgb2gray(img);
    se = strel('diamond', 4)
    dil = imdilate(img_gray, se);
    bw = imbinarize(dil);

    HSV = rgb2hsv(img);
    H = HSV(:,:,1);
    S = HSV(:,:,2);
    V = HSV(:,:,3);
    Hue = sum(sum(H))/sum(sum(bw));
    Saturation = sum(sum(S))/sum(sum(bw));
    Value = sum(sum(V))/sum(sum(bw));
    
    hHist = imhist(H);
    sHist = imhist(S);
    vHist = imhist(V);
    axes(handles.axes11);
    plot(hHist,'r') 
    hold on, 
    plot(sHist,'g') 
    plot(vHist,'b')
    legend('Hue','Saturation','Value');
    hold off

    axes(handles.axes2);
    imshow(HSV), title('HSV Images')
    set(handles.edit8,'String',Hue);
    set(handles.edit9,'String',Saturation);
    set(handles.edit12,'String',Value);
    
    data_HSV = [Hue, Saturation, Value];
    handles.data_HSV = data_HSV;
    guidata(hObject,handles)


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

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contents = cellstr(get(hObject, 'String'));
pop_choice = contents(get(hObject,'Value'));
if(strcmp(pop_choice,'1'))
    dist = 1;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'2'))
    dist = 2;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'3'))
    dist = 3;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'4'))
    dist = 4;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'5'))
    dist = 5;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'6'))
    dist = 6;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'7'))
    dist = 7;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'8'))
    dist = 8;
    handles.dist = dist;
    guidata(hObject,handles)
elseif (strcmp(pop_choice,'9'))
    dist = 9;
    handles.dist = dist;
    guidata(hObject,handles)
else
    dist = 10;
    handles.dist = dist;
    guidata(hObject,handles)
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% contents = cellstr(get(hObject, 'String'));
% pop_choice = contents(get(hObject,'Value'));
% if(strcmp(pop_choice,'1'))
%     dist = 1;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'2'))
%     dist = 2;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'3'))
%     dist = 3;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'4'))
%     dist = 4;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'5'))
%     dist = 5;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'6'))
%     dist = 6;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'7'))
%     dist = 7;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'8'))
%     dist = 8;
%     handles.dist = dist;
% elseif (strcmp(pop_choice,'9'))
%     dist = 9;
%     handles.dist = dist;
% else
%     dist = 10;
%     handles.dist = dist;
% end

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img = handles.img;
img_gray = rgb2gray(img);
dist = handles.dist;
% if(dist > 11 && dist < 1)
%     disp('Masukkan Pixel Distance');
% end
pixel_dist = dist;
    GLCM = graycomatrix(img_gray, 'Offset',[0 pixel_dist; -pixel_dist pixel_dist; -pixel_dist 0; -pixel_dist -pixel_dist],'Symmetric',true);
    stats = graycoprops(GLCM,{'Contrast','Correlation','Energy','Homogeneity'});
    Correlation = mean(stats.Correlation);
    Contrast = mean(stats.Contrast);
    Energy = mean(stats.Energy);
    Homogeneity = mean(stats.Homogeneity);

    lbpLB1 = extractLBPFeatures(img_gray, 'Upright',false);
    lb1 = sum(lbpLB1);

    axes(handles.axes12);
    gray = imhist(img_gray)
    plot(gray, 'black') 

axes(handles.axes3);
    imshow(img_gray), title('Grayscale Images')
    set(handles.edit14,'String',Correlation);
    set(handles.edit13,'String',Contrast);
    set(handles.edit15,'String',Energy);
    set(handles.edit16,'String',Homogeneity);

    data_GLCM = [Correlation, Contrast, Energy, Homogeneity,lb1];
    handles.data_GLCM = data_GLCM;
    guidata(hObject,handles)

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton1,'Value',1)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton4,'Value',0)
set(handles.radiobutton5,'Value',0)

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',1)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton4,'Value',0)
set(handles.radiobutton5,'Value',0)

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',1)
set(handles.radiobutton4,'Value',0)
set(handles.radiobutton5,'Value',0)

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton4,'Value',1)
set(handles.radiobutton5,'Value',0)

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton4,'Value',0)
set(handles.radiobutton5,'Value',1)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data_RGB = handles.data_RGB;
data_HSV = handles.data_HSV;
data_GLCM = handles.data_GLCM;

testing_data = [data_RGB, data_HSV, data_GLCM];

% Operations
val1 = get(handles.radiobutton1,'Value');
val2 = get(handles.radiobutton2,'Value');
val3 = get(handles.radiobutton3,'Value');
val4 = get(handles.radiobutton4,'Value');
val5 = get(handles.radiobutton5,'Value');

if val1 == 1
    load Mdl3
    hasil = predict(Mdl3,testing_data);
    set(handles.edit2,'String',hasil);
elseif val2 == 1
    load Mdl9
    hasil = predict(Mdl9,testing_data);
    set(handles.edit2,'String',hasil);
elseif val3 == 1
    load Mdl5
    hasil = predict(Mdl5,testing_data);
    set(handles.edit2,'String',hasil);
elseif val4 == 1
    load Mdl11
    hasil = predict(Mdl11,testing_data);
    set(handles.edit2,'String',hasil);
else
    load Mdl7
    hasil = predict(Mdl7,testing_data);
    set(handles.edit2,'String',hasil);
end


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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String',[]);
set(handles.edit2,'String',[]);
set(handles.edit3,'String',[]);
set(handles.edit6,'String',[]);
set(handles.edit7,'String',[]);
set(handles.edit8,'String',[]);
set(handles.edit9,'String',[]);
set(handles.edit12,'String',[]);
set(handles.popupmenu1, 'Value', 1);
set(handles.edit14,'String',[]);
set(handles.edit13,'String',[]);
set(handles.edit15,'String',[]);
set(handles.edit16,'String',[]);
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton4,'Value',0)
set(handles.radiobutton5,'Value',0)

%gca = gui current access
axes(handles.axes1)
cla reset;
set(gca,'XTick',[])
set(gca,'YTick',[])

axes(handles.axes2)
cla reset;
set(gca,'XTick',[])
set(gca,'YTick',[])

axes(handles.axes3)
cla reset;
set(gca,'XTick',[])
set(gca,'YTick',[])

axes(handles.axes10)
cla reset;
set(gca,'XTick',[])
set(gca,'YTick',[])

axes(handles.axes11)
cla reset;
set(gca,'XTick',[])
set(gca,'YTick',[])

axes(handles.axes12)
cla reset;
set(gca,'XTick',[])
set(gca,'YTick',[])
