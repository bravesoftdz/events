program Project1;

uses
  Vcl.Forms,
  WEBLib.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain: TWebForm} {*.html},
  uFlixKeys in '..\..\GlobalClasses\uFlixKeys.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
