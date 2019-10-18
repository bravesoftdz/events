unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Electron, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, WEBLib.SyntaxMemo,
  Vcl.Controls, WEBLib.ExtCtrls;

type
  TForm1 = class(TElectronForm)
    WebPanel1: TWebPanel;
    Memo: TWebSyntaxMemo;
    btnOpen: TWebButton;
    DlgOpen: TElectronOpenDialog;
    procedure ElectronFormCreate(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ElectronFormCreate(Sender: TObject);
begin
  Memo.Mode := 'pascal';
end;

procedure TForm1.btnOpenClick(Sender: TObject);
var
  LText : TElectronStringList;

begin
  if DlgOpen.Execute then
  begin
    LText := TElectronStringlist.Create;
    LText.LoadFromFile(DlgOpen.FileName);
    Memo.Lines := LText;
    LText.Free;
  end;
end;

end.