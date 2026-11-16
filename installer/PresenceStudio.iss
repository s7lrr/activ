#define MyAppName "Presence Studio"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "Presence Studio"
#define MyAppExeName "PresenceStudio.exe"

[Setup]
AppName=Presence Studio
AppVersion=1.1.0
DefaultDirName={autopf}\Presence Studio
DefaultGroupName=Presence Studio
OutputDir=installer
OutputBaseFilename=PresenceStudio-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64

[Files]
Source: "..\dist\PresenceStudio.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\Presence Studio"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\Presence Studio"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Presence Studio"; Flags: postinstall nowait skipifsilent
