function varargout = knshare(varargin)
% KNSHARE MATLAB code for knshare.fig
%      KNSHARE, by itself, creates a new KNSHARE or raises the existing
%      singleton*.
%
%      H = KNSHARE returns the handle to a new KNSHARE or the handle to
%      the existing singleton*.
%
%      KNSHARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KNSHARE.M with the given input arguments.
%
%      KNSHARE('Property','Value',...) creates a new KNSHARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before knshare_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to knshare_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help knshare

% Last Modified by GUIDE v2.5 22-Apr-2017 19:06:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @knshare_OpeningFcn, ...
                   'gui_OutputFcn',  @knshare_OutputFcn, ...
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


% --- Executes just before knshare is made visible.
function knshare_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to knshare (see VARARGIN)

% Choose default command line output for knshare
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes knshare wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = knshare_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run encryptgui


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run decryptgui
