unit RaffleTemplate2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, scControls, scGPControls,
  Vcl.StdCtrls, dxGDIPlusClasses, System.Math, ConfettiEffect, System.Skia,
  Vcl.Skia, Vcl.Imaging.GIFImg, Vcl.Imaging.pngimage, Vcl.MPlayer;

type
  TRaffleTemplate2U = class(TForm)
    scGPPickerName: TscGPPanel;
    scGPButton1: TscGPButton;
    Panel1: TPanel;
    Image1: TImage;
    lblName: TLabel;
    lblAccountNumber: TLabel;
    Panel2: TPanel;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    lblAddress: TLabel;
    Label6: TLabel;
    TDateChecker: TTimer;
    Panel9: TPanel;
    Label7: TLabel;
    Panel10: TPanel;
    Image4: TImage;
    Label8: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    scGPPanel1: TscGPPanel;
    scGPPanel2: TscGPPanel;
    scGPButton4: TscGPButton;
    Timer1: TTimer;
    Image3: TImage;
    Image5: TImage;
    Timer2: TTimer;
    procedure ShowInPanel(Panel: TPanel);
    procedure FormResize(Sender: TObject);
    procedure scGPPickerNameResize(Sender: TObject);
    procedure TDateCheckerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPButton4Click(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EmulateWinnerShow();
    function getOrderByLastWinner: Integer;
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RaffleTemplate2U: TRaffleTemplate2U;

implementation

{$R *.dfm}
Uses MainU,MainModuleU,SearchMemberConsumerU,WinnerU;

procedure TRaffleTemplate2U.EmulateWinnerShow;
Var
  IVar:Integer;
begin
  CounterTimer := 0 ;
  CounterClose := 0 ;
  //mpConfetti1.Play;
  //mpWinningBackGround.Play;
  Image3.Visible := True;
  (Image3.Picture.Graphic as TGIFImage).Animate := True;
  Application.ProcessMessages;
  (Image3.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
  Application.ProcessMessages;
  DoubleBuffered := True;// stops flickering

  Application.ProcessMessages;
  //Panel1.Left := Image1.Left + 20;
  //Panel1.Top  := Image1.Top + 70 ;
  Application.ProcessMessages;

  Application.ProcessMessages;
  with UmainModule do begin

    Application.ProcessMessages;
    if not qryWinnerMC.Locate('AccountNumber',qryMCQualifiedAccountNumber.AsString,[]) then begin
      Application.ProcessMessages;
      qryWinnerMC.Append;
      qryWinnerMCAccountNumber.AsString := qryMCQualifiedAccountNumber.AsString;
      qryWinnerMCName.AsString := qryMCQualifiedName.AsString;
      qryWinnerMCArea.AsString := qryMCQualifiedArea.AsString;
      qryWinnerMCAddress.AsString := qryMCQualifiedAddress.AsString;
      qryWinnerMCYear.AsInteger := CurrentYear;
      qryWinnerMCOrderBy.AsInteger := getOrderByLastWinner();
      qryWinnerMCGender.AsString := qryMCQualifiedGender.AsString;
      qryWinnerMC.Post;
      Application.ProcessMessages;
      qryMCQualified.Edit;
      qryMCQualifiedStatus.AsInteger := 2;
      qryMCQualified.Post;
      Application.ProcessMessages;

      qryCount.Close;
      qryCount.ParamByName('AArea').AsString := UMainForm.AArea;
      qryCount.ParamByName('AYear').AsInteger := CurrentYear;
      qryCount.Open();
      qryCount.First;
      UMainForm.Label3.Caption := FormatCurr('#,##0.00',(qryCountConsumerRegister.AsInteger));
      Label3.Caption := FormatCurr('#,##0.00',(qryCountConsumerRegister.AsInteger));
      


    end else begin

    end;
    UMainForm.IsOnRaffle := False;
  Application.ProcessMessages;
  end;
  //Timer2.Enabled := True;
end;

function TRaffleTemplate2U.getOrderByLastWinner: Integer;
begin
  with UMainModule do begin
    qryGetLastRecord.Close;
    qryGetLastRecord.ParamByName('AYear').AsInteger := CurrentYear;
    qryGetLastRecord.Open;
    result := qryGetLastRecordLastInteger.AsInteger;
  end;
end;

procedure TRaffleTemplate2U.FormCreate(Sender: TObject);
begin
  //mpConfetti11.FileName := 'Confetti1.wav';
  //mpConfetti11.Open;
  //mpConfetti11.Play;

  //mpConfetti22.FileName := 'Confetti2.wav';

  //mpConfetti22.Open;
  //mpConfetti2.Play;

  //mpWinningBackGround.FileName := 'Lottery_uk.wav';
  //mpWinningBackGround.Open;
  //mpWinningBackGround.Play;
  scGPPanel1.Align := alClient;
  
  Label7.Caption := FormatDateTime('MM/DD/YYYY, H:nn AM/PM', Now());
end;

procedure TRaffleTemplate2U.FormResize(Sender: TObject);
begin
  //scGPPickerName.Margins.Left := (Self.Width DIV 2) - ((Self.Width DIV 2)DIV 2);
  //scGPPickerName.Margins.Right := (Self.Width DIV 2) - ((Self.Width DIV 2)DIV 2);
  scGPButton4.Left := (scGPPanel2.Width DIV 2) - (scGPButton4.Width DIV 2);
  scGPButton4.Top := (scGPPanel2.Height DIV 2) - (scGPButton4.Height DIV 2);
end;

procedure TRaffleTemplate2U.FormShow(Sender: TObject);
begin
  with UMainModule do begin
    qryCount.Close;
    qryCount.ParamByName('AArea').AsString := UMainForm.AArea;
    qryCount.ParamByName('AYear').AsInteger := CurrentYear;
    qryCount.Open();
    qryCount.First;
    //UMainForm.Label3.Caption := FormatCurr('#,##0.00',(qryCountConsumerRegister.AsInteger));
    Label3.Caption := FormatCurr('#,##0.00',(qryCountConsumerRegister.AsInteger));
  end;
end;

procedure TRaffleTemplate2U.scGPButton1Click(Sender: TObject);
begin
   if not UMainForm.IsOnRaffle then begin
     UMainForm.IsOnRaffle := True;
     if UMainModule.qryMCQualified.IsEmpty then begin
       //MessageDlg('Cannot Spin the Wheel if Record is Empty!!!',mtWarning,);
       Exit;
     end;
     UMainModule.qryMCQualified.Refresh;
     UMainModule.qryWinnerMC.Refresh;
     Image3.Visible := False;
     Image5.Visible := False;
     Timer2.Enabled := False;
     CounterClose := 0;
     UMainForm.isRaffleTemplateCreated := True;
     Application.ProcessMessages;
     //Timer1.Enabled := True;
     UMainModule.CallSettings;
     UMainForm.SecLength := (RandomRange(UMainModule.ASecMin, UMainModule.ASecMax));
     Application.ProcessMessages;
     Timer1.Enabled := True;
     Application.ProcessMessages;
   end;
end;

procedure TRaffleTemplate2U.scGPButton2Click(Sender: TObject);
begin
  if not UMainForm.IsOnRaffle then
    UMainForm.SpeedButton3Click(Sender);
end;

procedure TRaffleTemplate2U.scGPButton3Click(Sender: TObject);
begin
  if not UMainForm.IsOnRaffle then
    UMainForm.SpeedButton6Click(Sender);
end;

procedure TRaffleTemplate2U.scGPButton4Click(Sender: TObject);
begin
  scGPPanel1.Visible := False;
  scGPButton1Click(Sender);
end;

procedure TRaffleTemplate2U.scGPPickerNameResize(Sender: TObject);
begin
  Image1.Left := (Panel1.Width DIV 2) - (Image1.Width DIV 2);
  scGPButton2.Width := (Panel2.Width DIV 2) - 9;
  scGPButton3.Width := scGPButton2.Width;
  Panel6.Width := (Panel2.Width DIV 2);
  Panel10.Width := (Panel2.Width DIV 2);

end;

procedure TRaffleTemplate2U.ShowInPanel(Panel: TPanel);
begin
  // Set the parent of the form to the panel
  Parent := Panel;
  Align := alClient; // Optional: align the form to fill the panel
  UMainForm.isRaffleTemplateCreated := True;
  Label4.Caption := StringReplace(StringReplace(UMainForm.ComboBox1.Text,'<','',[rfReplaceAll, rfIgnoreCase]),'>','',[rfReplaceAll, rfIgnoreCase]);
  Show; // Show the form
end;

procedure TRaffleTemplate2U.TDateCheckerTimer(Sender: TObject);
begin
  Label7.Caption := FormatDateTime('MM/DD/YYYY, H:nn AM/PM', Now());
end;

procedure TRaffleTemplate2U.Timer1Timer(Sender: TObject);
var
  IndicatorID:Integer;
  UMemberConsumer : TUMemberConsumer;
  AAccountNumber,AName,AAddress:String;
begin
  Application.ProcessMessages;

  UMainForm.I := UMainForm.I + 1;
  UMainForm.TickInterval := UMainForm.TickInterval + Timer1.Interval;

  if UMainForm.TickInterval = (UMainForm.SecLength*1000) then begin

    IndicatorID := RandomRange(1, UMainModule.qryMCQualified.RecordCount+1);
    UMainModule.qryMCQualified.RecNo := IndicatorID;
    Timer1.Enabled := False;
    UMainForm.I:=0;
    UMainForm.TickInterval := 0;
    Application.ProcessMessages;
      try
        //UMainForm.mpSpinningWheel.Stop;
        AAccountNumber := UMainModule.qryMCQualifiedAccountNumber.AsString;
        AName := UMainModule.qryMCQualifiedName.AsString;
        AAddress := UMainModule.qryMCQualifiedAddress.AsString;
        UMainForm.CreateABatchFile(AAccountNumber,AName);
        Application.ProcessMessages;
        screen.Cursor := crHourGlass;
        lblAccountNumber.Caption := AAccountNumber;
        lblName.Caption := AName;
        lblAddress.Caption := AAddress;
        Image3.Visible := True;
        (Image3.Picture.Graphic as TGIFImage).Animate := True;
        Application.ProcessMessages;
        (Image3.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed

        Image5.Visible := True;
        (Image5.Picture.Graphic as TGIFImage).Animate := True;
        Application.ProcessMessages;
        (Image5.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed
        //UWinner := TUWinner.Create(nil);
        //UWinner.ShowModal();
        EmulateWinnerShow();
        Timer2.Enabled := True;
        Application.ProcessMessages;

        //lblAccountNumber.Caption := UWinner.lblAccountNumber.Caption;
        //lblName.Caption := UWinner.lblName.Caption;
        //lblAddress.Caption := UWinner.lblAddress.Caption;

        Application.ProcessMessages;
      finally
        //UWinner.Free();
        screen.Cursor := crDefault;
        Application.ProcessMessages;

      end;
      UMainForm.VT.Clear;
      UMainForm.VT.Append;
      UMainForm.VTAccountNumber.AsString := UMainModule.qryMCQualifiedAccountNumber.AsString;
      UMainForm.VTName.AsString := UMainModule.qryMCQualifiedName.AsString;
      UMainForm.VTAddress.AsString := UMainModule.qryMCQualifiedAddress.AsString;
      UMainForm.VT.Post;



      Exit;
  end else begin
    Application.ProcessMessages;
    IndicatorID := RandomRange(1, UMainModule.qryMCQualified.RecordCount);
    UMainModule.qryMCQualified.RecNo := IndicatorID;
    Application.ProcessMessages;

    Application.ProcessMessages;
    UMainForm.VT.Clear;
    UMainForm.VT.Append;
    UMainForm.VTAccountNumber.AsString := UMainModule.qryMCQualifiedAccountNumber.AsString;
    UMainForm.VTName.AsString := UMainModule.qryMCQualifiedName.AsString;
    UMainForm.VTAddress.AsString := UMainModule.qryMCQualifiedAddress.AsString;
    UMainForm.VT.Post;

    lblAccountNumber.Caption := UMainForm.VTAccountNumber.AsString;
    lblName.Caption := UMainForm.VTName.AsString;
    lblAddress.Caption := UMainForm.VTAddress.AsString;
  end;


  Application.ProcessMessages;
end;

procedure TRaffleTemplate2U.Timer2Timer(Sender: TObject);
begin
  Application.ProcessMessages;
  if CounterClose >= UMainModule.ACloseConfettiTimer then begin
    CounterClose := 0;
    Timer2.Enabled := False;
    Image3.Visible := False;
    Image5.Visible := False;
    Application.ProcessMessages;
  end;
  Application.ProcessMessages;
  CounterClose := CounterClose + 1;
end;

end.