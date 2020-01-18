program Optimus;

uses
  System.StartUpCopy,
  FMX.Forms,
  AppForm in 'AppForm.pas' {frMain},
  StartForm in 'StartForm.pas' {frStart};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrStart, frStart);
  Application.Run;
end.
