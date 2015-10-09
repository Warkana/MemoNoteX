;------------------------------------------------------------------------------
;   ���������� ��������� ���������
;------------------------------------------------------------------------------

; ��� ����������
#define   Name       "MemoNote"
; ������ ����������
#define   Version    "0.0.3"
; �����-�����������
#define   Publisher  "Vold"
; ���� ����� ������������
#define   URL        "http://www.google.com"
; ��� ������������ ������
#define   ExeName    "MemoNote.exe"

;****************************************************************
[Setup]

; ���������� ������������� ����������, 
;��������������� ����� Tools -> Generate GUID
AppId={{76B68066-F6E9-4B19-91EA-96ED9C0982C9}}

; ������ ����������, ������������ ��� ���������
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; ���� ��������� ��-���������
DefaultDirName={pf}\{#Name}
; ��� ������ � ���� "����"
DefaultGroupName={#Name}

; �������, ���� ����� ������� ��������� setup � ��� ������������ �����
OutputDir=D:\Projects\STP\MemoNote
OutputBaseFileName=test-setup

; ���� ������
SetupIconFile=D:\Projects\icon.ico

; ��������� ������
Compression=lzma
SolidCompression=yes

;------------------------------------------------------------------------------
;   ������������� ����� ��� �������� ���������
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"

;------------------------------------------------------------------------------
;   ����������� - ��������� ������, ������� ���� ��������� ��� ���������
;------------------------------------------------------------------------------
[Tasks]
; �������� ������ �� ������� �����
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]

; ����������� ����
Source: "D:\Projects\STP\MemoNoteX\MemoNote\bin\Debug\MemoNote.exe"; DestDir: "{app}"; Flags: ignoreversion

; ������������� �������
Source: "D:\Projects\STP\MemoNoteX\MemoNote\bin\Debug\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"

Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon


[Code]
#include "ReInstall.pas"

[Run]

Filename: {tmp}\dotNetFx40_Full_x86_x64.exe; Parameters: "/q:a /c:""install /l /q"""; Check: not IsRequiredDotNetDetected; StatusMsg: Microsoft Framework 4.0 is installed. Please wait...
