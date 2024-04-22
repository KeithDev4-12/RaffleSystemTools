unit ConfettiEffect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Classes, Vcl.Controls, Vcl.Graphics,
  System.Types, System.SysUtils, Vcl.ExtCtrls, System.Math, System.Contnrs;

type
  TConfettiEffect = class(TCustomControl)
  private
    FTimer: TTimer;
    FConfettiList: array of record
      Position: TPoint;
      Color: TColor;
      Angle: Integer;
      Speed: Integer;
    end;
    FConfettiColors: TStringList;
    FInterval: Integer;
    procedure TimerHandler(Sender: TObject);
    procedure InitializeConfetti;
    procedure DrawConfetti(Canvas: TCanvas);
    procedure SetInterval(Value: Integer);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure StartEffect;
  published
    property ConfettiColors: TStringList read FConfettiColors write FConfettiColors;
    property Interval: Integer read FInterval write SetInterval;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TConfettiEffect]);
end;

{ TConfettiEffect }

constructor TConfettiEffect.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csOpaque];
  Width := 200;
  Height := 200;
  FTimer := TTimer.Create(Self);
  FTimer.Interval := 50; // Adjust as needed
  FTimer.OnTimer := TimerHandler;
  FConfettiColors := TStringList.Create;
  FInterval := 50; // Default interval
end;

destructor TConfettiEffect.Destroy;
begin
  FConfettiColors.Free;
  FTimer.Free;
  inherited Destroy;
end;

procedure TConfettiEffect.InitializeConfetti;
var
  i: Integer;
begin
  SetLength(FConfettiList, 100); // Adjust as needed
  for i := Low(FConfettiList) to High(FConfettiList) do
  begin
    FConfettiList[i].Position := Point(Random(Width), -Random(Height));
    FConfettiList[i].Color := StringToColor(FConfettiColors[Random(FConfettiColors.Count)]);
    FConfettiList[i].Angle := Random(360);
    FConfettiList[i].Speed := Random(3) + 1;
  end;
end;

procedure TConfettiEffect.Paint;
begin
  inherited;
  DrawConfetti(Canvas);
end;

procedure TConfettiEffect.StartEffect;
begin
  InitializeConfetti;
  FTimer.Enabled := True;
end;

procedure TConfettiEffect.DrawConfetti(Canvas: TCanvas);
var
  i: Integer;
  ConfettiRect: TRect;
begin
  Canvas.Brush.Style := bsSolid;
  for i := Low(FConfettiList) to High(FConfettiList) do
  begin
    ConfettiRect := Rect(FConfettiList[i].Position.X, FConfettiList[i].Position.Y,
      FConfettiList[i].Position.X + 5, FConfettiList[i].Position.Y + 5); // Adjust size as needed
    Canvas.Brush.Color := FConfettiList[i].Color;
    Canvas.FillRect(ConfettiRect);
  end;
end;

procedure TConfettiEffect.TimerHandler(Sender: TObject);
var
  i: Integer;
begin
  for i := Low(FConfettiList) to High(FConfettiList) do
  begin
    FConfettiList[i].Position.X := FConfettiList[i].Position.X + Round(FConfettiList[i].Speed * Cos(DegToRad(FConfettiList[i].Angle)));
    FConfettiList[i].Position.Y := FConfettiList[i].Position.Y + Round(FConfettiList[i].Speed * Sin(DegToRad(FConfettiList[i].Angle)));
    if (FConfettiList[i].Position.Y > Height) or (FConfettiList[i].Position.X > Width) then
    begin
      FConfettiList[i].Position := Point(Random(Width), -Random(Height));
      FConfettiList[i].Color := StringToColor(FConfettiColors[Random(FConfettiColors.Count)]);
      FConfettiList[i].Angle := Random(360);
      FConfettiList[i].Speed := Random(3) + 1;
    end;
  end;
  Repaint;
end;

procedure TConfettiEffect.SetInterval(Value: Integer);
begin
  if FInterval <> Value then
  begin
    FInterval := Value;
    FTimer.Interval := Value;
  end;
end;

end.

