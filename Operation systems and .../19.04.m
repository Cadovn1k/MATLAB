function varargout = www(varargin)
% WWW MATLAB code for www.fig
%      WWW, by itself, creates a new WWW or raises the existing
%      singleton*.
%
%      H = WWW returns the handle to a new WWW or the handle to
%      the existing singleton*.
%
%      WWW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WWW.M with the given input arguments.
%
%      WWW('Property','Value',...) creates a new WWW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before www_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to www_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help www

% Last Modified by GUIDE v2.5 19-Apr-2021 09:28:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @www_OpeningFcn, ...
                   'gui_OutputFcn',  @www_OutputFcn, ...
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


% --- Executes just before www is made visible.
function www_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to www (see VARARGIN)

% Choose default command line output for www
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes www wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = www_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnPlot.
function btnPlot_Callback(hObject, eventdata, handles)
x=0:0.2:10;
y=sin(x);
plot(x,y)
set(hObject,'enable','off')
set(handles.btnClear,'enable','on')
if get(handles.ChbxGridX,'value')
    set(handles.axMain,'XGrid','on')
else set(handles.axMain,'XGrid','off')
end
if get(handles.ChbxGridY,'value')
    set(handles.axMain,'YGrid','on')
else set(handles.axMain,'YGrid','off')
end
% hObject    handle to btnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
cla
set(hObject,'enable','off')
set(handles.btnPlot,'enable','on')
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ChbxGridX.
function ChbxGridX_Callback(hObject, eventdata, handles)
if get(handles.ChbxGridX,'value')
    set(handles.axMain,'XGrid','on')
else set(handles.axMain,'XGrid','off')
end
% hObject    handle to ChbxGridX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ChbxGridX


% --- Executes on button press in ChbxGridY.
function ChbxGridY_Callback(hObject, eventdata, handles)
if get(handles.ChbxGridY,'value')
    set(handles.axMain,'YGrid','on')
else set(handles.axMain,'YGrid','off')
end
% hObject    handle to ChbxGridY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ChbxGridY
