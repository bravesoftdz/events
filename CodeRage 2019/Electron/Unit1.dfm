object Form1: TForm1
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TabOrder = 1
  OnCreate = ElectronFormCreate
  object WebPanel1: TWebPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 60
    Align = alTop
    BorderColor = clSilver
    BorderStyle = bsSingle
    ExplicitLeft = 152
    ExplicitTop = 48
    ExplicitWidth = 150
    object btnOpen: TWebButton
      Left = 16
      Top = 16
      Width = 96
      Height = 25
      Caption = #214'ffnen...'
      OnClick = btnOpenClick
    end
  end
  object Memo: TWebSyntaxMemo
    Left = 0
    Top = 60
    Width = 640
    Height = 420
    Align = alClient
    CustomAutocomplete = <>
    TabOrder = 1
    ExplicitLeft = 128
    ExplicitTop = 168
    ExplicitWidth = 400
    ExplicitHeight = 300
  end
  object DlgOpen: TElectronOpenDialog
    Title = 'Quelltext '#246'ffnen'
    Left = 128
    Top = 16
  end
end
