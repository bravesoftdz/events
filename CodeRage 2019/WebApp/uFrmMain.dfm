object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Width = 684
  Height = 531
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TabOrder = 1
  OnCreate = WebFormCreate
  object Map: TWebGoogleMaps
    Left = 0
    Top = 0
    Width = 684
    Height = 531
    Align = alClient
    OnMapLoaded = MapMapLoaded
    ExplicitLeft = 44
    ExplicitTop = 43
    ExplicitWidth = 640
    ExplicitHeight = 480
  end
  object Geo: TWebGeoLocation
    Left = 56
    Top = 344
    Width = 24
    Height = 24
    OnGeolocation = GeoGeolocation
  end
end
