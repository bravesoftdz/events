unit uFrmMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls, WEBLib.ExtCtrls,
  WEBLib.WebCtrls;

type
  TFrmMain = class(TWebForm)
    Map: TWebGoogleMaps;
    Geo: TWebGeoLocation;
    procedure WebFormCreate(Sender: TObject);
    procedure GeoGeolocation(Sender: TObject; Lat, Lon, Alt: Double);
    procedure MapMapLoaded(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}
uses uFlixKeys;

procedure TFrmMain.WebFormCreate(Sender: TObject);
begin
  Map.APIKey := TFlixKeys.GetGoogleMapsKey;
end;

procedure TFrmMain.GeoGeolocation(Sender: TObject; Lat, Lon, Alt: Double);
begin
  Map.SetCenter( Lat, Lon );

  Map.AddMarker(Lat, Lon, 'I am here!');
end;

procedure TFrmMain.MapMapLoaded(Sender: TObject);
begin
  Geo.GetGeolocation;
end;

end.
