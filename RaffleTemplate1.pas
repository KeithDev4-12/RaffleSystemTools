unit RaffleTemplate1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.GIFImg,
  Vcl.ExtCtrls, dxGDIPlusClasses, Vcl.Buttons,System.Math;

type
  TRaffleTemplate1U = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    Image6: TImage;
    Image2: TImage;
    Label14: TLabel;
    imgHoverArrowShowSelected: TImage;
    Image4: TImage;
    Label16: TLabel;
    Timer1: TTimer;
    procedure Image6Click(Sender: TObject);
    procedure ShowInPanel(Panel: TPanel);
    procedure Timer1Timer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RaffleTemplate1U: TRaffleTemplate1U;


implementation

{$R *.dfm}
Uses MainU,MainModuleU,SearchMemberConsumerU,WinnerU;

procedure TRaffleTemplate1U.ShowInPanel(Panel: TPanel);
begin
  // Set the parent of the form to the panel
  Parent := Panel;
  Align := alClient; // Optional: align the form to fill the panel
  UMainForm.isRaffleTemplateCreated := True;
  Show; // Show the form
end;

procedure TRaffleTemplate1U.Timer1Timer(Sender: TObject);
var
  IndicatorID:Integer;
  UMemberConsumer : TUMemberConsumer;
  AAccountNumber,AName:String;
begin
  Application.ProcessMessages;

  UMainForm.I := UMainForm.I + 1;
  UMainForm.TickInterval := UMainForm.TickInterval + Timer1.Interval;
  {if I = 1 then begin
    (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 500;
  end else if I = 2 then begin
    (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 400;

  end else if I = 3 then begin
    (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 300;

  end else if I = 4 then begin
    (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 200;

  end else if I = 5 then begin
    (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;

  end else}

  //mpSpinningWheel.Play;
  if UMainForm.TickInterval = (UMainForm.SecLength*1000) then begin
    (Image1.Picture.Graphic as TGIFImage).Animate := False;
     (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
    Application.ProcessMessages;
    (Image3.Picture.Graphic as TGIFImage).Animate := False;
    Application.ProcessMessages;
     (Image3.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
     (Image4.Picture.Graphic as TGIFImage).Animate := False;
    Application.ProcessMessages;
     (Image4.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
   Application.ProcessMessages;
     (imgHoverArrowShowSelected.Picture.Graphic as TGIFImage).Animate := False;
     (imgHoverArrowShowSelected.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
      DoubleBuffered := True;// stops flickering
    IndicatorID := RandomRange(1, UMainModule.qryMCQualified.RecordCount+1);
    UMainModule.qryMCQualified.RecNo := IndicatorID;
    Timer1.Enabled := False;
    UMainForm.I:=0;
    UMainForm.TickInterval := 0;
    Application.ProcessMessages;
      try
        UMainForm.mpSpinningWheel.Stop;
        AAccountNumber := UMainModule.qryMCQualifiedAccountNumber.AsString;
        AName := UMainModule.qryMCQualifiedName.AsString;
        UMainForm.CreateABatchFile(AAccountNumber,AName);
        Application.ProcessMessages;
        screen.Cursor := crHourGlass;
        UWinner := TUWinner.Create(nil);
        UWinner.ShowModal();
        Application.ProcessMessages;

        Label16.Caption := UWinner.lblAccountNumber.Caption + ' | ' + UWinner.lblName.Caption;
        Label15.Caption := UWinner.lblAccountNumber.Caption + ' | ' + UWinner.lblName.Caption;
        Label14.Caption := UWinner.lblAccountNumber.Caption + ' | ' + UWinner.lblName.Caption;
        Application.ProcessMessages;
      finally
        UWinner.Free();
        screen.Cursor := crDefault;
        Application.ProcessMessages;

      end;
      Exit;
  end else begin
    Application.ProcessMessages;
    IndicatorID := RandomRange(1, UMainModule.qryMCQualified.RecordCount);
    UMainModule.qryMCQualified.RecNo := IndicatorID;
    Application.ProcessMessages;
  end;
  Application.ProcessMessages;
  UMainForm.VT.Clear;
  UMainForm.VT.Append;
  UMainForm.VTAccountNumber.AsString := UMainModule.qryMCQualifiedAccountNumber.AsString;
  UMainForm.VTName.AsString := UMainModule.qryMCQualifiedName.AsString;
  UMainForm.VTAddress.AsString := UMainModule.qryMCQualifiedAddress.AsString;
  UMainForm.VT.Post;
  Label16.Caption := UMainForm.VTAccountNumber.AsString + ' | ' + UMainForm.VTName.AsString;
  Label15.Caption := UMainForm.VTAccountNumber.AsString + ' | ' + UMainForm.VTName.AsString;
  Label14.Caption := UMainForm.VTAccountNumber.AsString + ' | ' + UMainForm.VTName.AsString;

  Application.ProcessMessages;
end;

procedure TRaffleTemplate1U.FormResize(Sender: TObject);
Var
  LocationWheelX,LocationWheelY : Integer;
begin
  Application.ProcessMessages;
  //with RaffleTemplate1U do begin
    UMainForm.I := 0;
    UMainForm.TickInterval := 0;
    // LEFT
    Image1.Left := ((Self.Width) DIV 2) - (Image1.Width DIV 2);
    SpeedButton5.Left := ((Self.Width) DIV 2) - (SpeedButton5.Width DIV 2);
    Image6.Left := ((Self.Width) DIV 2) - (Image6.Width DIV 2);
    Image2.Left := ((Self.Width) DIV 2) + (Image1.Width DIV 2) - (Image2.Width DIV 2);
    // TOP
    Image1.Top := ((Self.Height - Image3.Height + Image4.Height)  DIV 2) - (Image1.Height DIV 2);
    SpeedButton5.Top := ((Self.Height - Image3.Height + Image4.Height) DIV 2) - (SpeedButton5.Height DIV 2);
    Image6.Top := ((Self.Height - Image3.Height + Image4.Height) DIV 2) - (Image6.Height DIV 2);
    Image2.Top := ((Self.Height - Image3.Height + Image4.Height) DIV 2) - (Image2.Height DIV 2);
    //ShowMessage(IntToStr(Self.Width) + '-' + IntToStr(Screen.Width) + '-' + IntToStr(Panel1.Width) + '-'  + IntToStr(LocationWheelX) + ' - ' + IntToStr(LocationWheelY) );
  //end;
end;

procedure TRaffleTemplate1U.Image2MouseEnter(Sender: TObject);
begin
  Label14.Visible := True;
  imgHoverArrowShowSelected.Visible := True;
end;

procedure TRaffleTemplate1U.Image2MouseLeave(Sender: TObject);
begin
  Label14.Visible := False;
  imgHoverArrowShowSelected.Visible := False;
end;

procedure TRaffleTemplate1U.Image6Click(Sender: TObject);
begin
  if UMainModule.qryMCQualified.IsEmpty then begin
     //MessageDlg('Cannot Spin the Wheel if Record is Empty!!!',mtWarning,);
     Exit;
   end;
   UMainForm.isRaffleTemplateCreated := True;
   Application.ProcessMessages;
   //Timer1.Enabled := True;
   UMainModule.CallSettings;
   UMainForm.SecLength := (RandomRange(UMainModule.ASecMin, UMainModule.ASecMax));

   Application.ProcessMessages;
  (Image1.Picture.Graphic as TGIFImage).Animate := True;
     (Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
  Application.ProcessMessages;
  (Image3.Picture.Graphic as TGIFImage).Animate := True;
     (Image3.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
  (Image4.Picture.Graphic as TGIFImage).Animate := True;
     (Image4.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
   Application.ProcessMessages;
   (imgHoverArrowShowSelected.Picture.Graphic as TGIFImage).Animate := True;
  Application.ProcessMessages;
     (imgHoverArrowShowSelected.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
     Application.ProcessMessages;
      DoubleBuffered := True;// stops flickering
      Application.ProcessMessages;
      Timer1.Enabled := True;
      Application.ProcessMessages;
end;

end.