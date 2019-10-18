program Project1;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  uFlixKeys in '..\..\GlobalClasses\uFlixKeys.pas',
  uFrmMain in '..\WebApp\uFrmMain.pas' {FrmMain: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
