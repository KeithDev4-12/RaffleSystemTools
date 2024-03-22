program RaffleTools;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {UMainForm},
  SearchMemberConsumerU in 'SearchMemberConsumerU.pas' {UMemberConsumer},
  MainModuleU in 'MainModuleU.pas' {UMainModule: TDataModule},
  ServerToLocalU in 'ServerToLocalU.pas' {UServerToLocal},
  WinnerU in 'WinnerU.pas' {UWinner},
  UploaderPreRegistrationU in 'UploaderPreRegistrationU.pas' {UUploaderPreRegistration},
  VoiceSettingsU in 'VoiceSettingsU.pas' {UVoiceSettings},
  ReportU in 'ReportU.pas' {UReport},
  LogInU in 'LogInU.pas' {ULogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUMainForm, UMainForm);
  Application.CreateForm(TUMainModule, UMainModule);
  Application.CreateForm(TUUploaderPreRegistration, UUploaderPreRegistration);
  Application.CreateForm(TUVoiceSettings, UVoiceSettings);
  Application.CreateForm(TUReport, UReport);
  Application.CreateForm(TULogin, ULogin);
  Application.Run;
end.
