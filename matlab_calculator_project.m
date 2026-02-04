function varargout = matlab_calculator_project(varargin)
% MATLAB_CALCULATOR_PROJECT MATLAB code for matlab_calculator_project.fig
%      MATLAB_CALCULATOR_PROJECT, by itself, creates a new MATLAB_CALCULATOR_PROJECT or raises the existing
%      singleton*.
%
%      H = MATLAB_CALCULATOR_PROJECT returns the handle to a new MATLAB_CALCULATOR_PROJECT or the handle to
%      the existing singleton*.
%
%      MATLAB_CALCULATOR_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_CALCULATOR_PROJECT.M with the given input arguments.
%
%      MATLAB_CALCULATOR_PROJECT('Property','Value',...) creates a new MATLAB_CALCULATOR_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_calculator_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_calculator_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_calculator_project

% Last Modified by GUIDE v2.5 28-Apr-2021 10:53:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_calculator_project_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_calculator_project_OutputFcn, ...
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


% --- Executes just before matlab_calculator_project is made visible.
function matlab_calculator_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_calculator_project (see VARARGIN)

% Choose default command line output for matlab_calculator_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_calculator_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_calculator_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function screen_Callback(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screen as text
%        str2double(get(hObject,'String')) returns contents of screen as a double


% --- Executes during object creation, after setting all properties.
function screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SinButton.
function SinButton_Callback(hObject, eventdata, handles)
% hObject    handle to SinButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Calculates the value for Sin(x), x being the number that is
% displayed/currently stored in the screen.
% The number must be selected first, following the sin button which will
% automatically calculate the value in radians without pressing the enter
% key.

set(handles.screen,'String', num2str(sin(str2num(get(handles.screen,'String')))));



% --- Executes on button press in CosButton.
function CosButton_Callback(hObject, eventdata, handles)
% hObject    handle to CosButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Calculates the value for Cos(x), x being the number that is
% displayed/currently stored in the screen.
% The number must be selected first, following the sin button which will
% automatically calculate the value in radians without pressing the enter
% key.
set(handles.screen,'String', num2str(cos(str2num(get(handles.screen,'String')))));


% --- Executes on button press in TanButton.
function TanButton_Callback(hObject, eventdata, handles)
% hObject    handle to TanButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Calculates the value for Tan(x), x being the number that is
% displayed/currently stored in the screen.
% The number must be selected first, following the sin button which will
% automatically calculate the value in radians without pressing the enter
% key.
set(handles.screen,'String', num2str(tan(str2num(get(handles.screen,'String')))));


% --- Executes on button press in ClearButton.
function ClearButton_Callback(hObject, eventdata, handles)
% hObject    handle to ClearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Sets the String value stored/dispalyed in the calculator screen to
% nothing ('').
set(handles.screen,"String", ' ');

% --- Executes on button press in Num7.
function Num7_Callback(hObject, eventdata, handles)
% hObject    handle to Num7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen (7).
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '7'));

% --- Executes on button press in Num8.
function Num8_Callback(hObject, eventdata, handles)
% hObject    handle to Num8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '8'));

% --- Executes on button press in Num9.
function Num9_Callback(hObject, eventdata, handles)
% hObject    handle to Num9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '9'));

% --- Executes on button press in PlusButton.
function PlusButton_Callback(hObject, eventdata, handles)
% hObject    handle to PlusButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Declared a global variable which can be used outside of this function.
global A Selector

% Declaring the global variable A, which converts the String to a number
% for calculations.
A = str2num(get(handles.screen,'String'));

% Selector distinguishes gloabl variables from each other by assigning them
% a certain number (1,2,3,4). This will be used later on to define which
% operation will be executed on which global variable (A,B,C, or D).
Selector = 1;

% resets the screen to '' while awaiting for user to input new numerical
% value
set(handles.screen,'String', ' ');

% --- Executes on button press in Num4.
function Num4_Callback(hObject, eventdata, handles)
% hObject    handle to Num4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
%Sets a value that is displayed in the calculator screen.
%strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '4'));

% --- Executes on button press in Num5.
function Num5_Callback(hObject, eventdata, handles)
% hObject    handle to Num5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
%(Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '5'));

% --- Executes on button press in Num6.
function Num6_Callback(hObject, eventdata, handles)
% hObject    handle to Num6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '6'));

% --- Executes on button press in SubtractButton.
function SubtractButton_Callback(hObject, eventdata, handles)
% hObject    handle to SubtractButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Declared a global variable which can be used outside of this function.
global B Selector

% Declaring the global variable B, which converts the String to a number
% for calculations.
B = str2num(get(handles.screen,'String'));

% Selector distinguishes gloabl variables from each other by assigning them
% a certain number (1,2,3,4). This will be used later on to define which
% operation will be executed on which global variable (A,B,C, or D).
Selector = 2;

% resets the screen to '' while awaiting for user to input new numerical
% value
set(handles.screen,'String', ' ');

% --- Executes on button press in Num1.
function Num1_Callback(hObject, eventdata, handles)
% hObject    handle to Num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '1'));

% --- Executes on button press in Num2.
function Num2_Callback(hObject, eventdata, handles)
% hObject    handle to Num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '2'));

% --- Executes on button press in Num3.
function Num3_Callback(hObject, eventdata, handles)
% hObject    handle to Num3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '3'));

% --- Executes on button press in MultiplicationButton.
function MultiplicationButton_Callback(hObject, eventdata, handles)
% hObject    handle to MultiplicationButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Declared a global variable which can be used outside of this function.
global C Selector

% Declaring the global variable C, which converts the String to a number
% for calculations.
C = str2num(get(handles.screen,'String'));

% Selector distinguishes gloabl variables from each other by assigning them
% a certain number (1,2,3,4). This will be used later on to define which
% operation will be executed on which global variable (A,B,C, or D).
Selector = 3;

% resets the screen to '' while awaiting for user to input new numerical
% value
set(handles.screen,'String', ' ');

% --- Executes on button press in Num0.
function Num0_Callback(hObject, eventdata, handles)
% hObject    handle to Num0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');
% Sets a value that is displayed in the calculator screen.
% strcat allows for concatination between multiple numbers (ex: 777777).
set(handles.screen,'String', strcat(S, '0'));

% --- Executes on button press in DotButton.
function DotButton_Callback(hObject, eventdata, handles)
% hObject    handle to DotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
  S = get(handles.screen,'String');
  
% Makes a String, which will later be converted to a number during the
% calcuation process, a decimal. This will allow for calcuations with
% decimals.
  set(handles.screen,'String', strcat(S,'.'));
    

% --- Executes on button press in NegativeButton.
function NegativeButton_Callback(hObject, eventdata, handles)
% hObject    handle to NegativeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Retrieves the value which has been stored in the screen. 
% (Will be referred to as first screen).
S = get(handles.screen,'String');

% Makes a String, which will later be converted to a number during the
% calcuation process, negative. This will allow for calcuations with
% negative numbers.
set(handles.screen,'String', strcat(S, '-'));


% --- Executes on button press in DivisionButton.
function DivisionButton_Callback(hObject, eventdata, handles)
% hObject    handle to DivisionButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Declared a global variable which can be used outside of this function.
global D Selector

% Declaring the global variable D, which converts the String to a number
% for calculations.
D = str2num(get(handles.screen,'String'));

% Selector distinguishes gloabl variables from each other by assigning them
% a certain number (1,2,3,4). This will be used later on to define which
% operation will be executed on which global variable (A,B,C, or D).
Selector = 4;

% resets the screen to '' while awaiting for user to input new numerical
% value
set(handles.screen,'String', ' ');

% --- Executes on button press in EnterButton.
function EnterButton_Callback(hObject, eventdata, handles)
% hObject    handle to EnterButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Declares global variables that will require the enter key for a solution.
global A B C D Selector

%Selector Defines which operation will be executed.
switch Selector
    case 1
        %Adds number on 1st screen to number on 2nd screen when pressing enter.
        A = A+str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(A));
    case 2
        %Subtracts number on 1st screen from number on 2nd screen when pressing enter.
        B = B-str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(B));
    case 3
        %Multiplies number on 1st screen to number on 2nd screen when pressing enter.
        C = C*str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(C));
    case 4
        %Divides number on 1st screen by number on 2nd screen when pressing enter.
        D = D/str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(D));
 
end
        
        